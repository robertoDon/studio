export function Steps() {
  useEffect(() => {
    const a = setTimeout(() => setStep(1), 500);
    const b = setTimeout(() => setStep(2), 1650);
    const c = setTimeout(() => setStep(3), 1850);
  }, []);
  return <div onClick={() => setTimeout(go, 400)}>
    <p style={{ transition: "opacity 900ms" }} />
    <p style={{ transitionDuration: "800ms" }} className="rounded-[13px]" />
  </div>;
}
