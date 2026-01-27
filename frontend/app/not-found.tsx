import Link from 'next/link'
 
export default function NotFound() {
  return (
    <div className="flex flex-col items-center justify-center h-[50vh]">
      <h2 className="text-2xl font-bold">Not Found</h2>
      <p className="text-gray-600">Could not find requested resource</p>
      <Link href="/" className="mt-4 text-black underline">Return Home</Link>
    </div>
  )
}
