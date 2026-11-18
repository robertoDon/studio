export function Card() {
  return (
    <div className="rounded-lg p-4 text-sm shadow-md duration-300 z-50 gap-[13px] text-[15px]">
      <motion.div transition={{ duration: 0.8 }} style={{ fontSize: 14, padding: 16 }} />
      <span className="rounded text-sm p-4 bg-[#ff0000]" />
    </div>
  )
}
