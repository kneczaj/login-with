import React from 'react'
import Link from 'next/link'

export default ({profile, redirect}) => (
  <div className='notification'>
    Welcome back <strong>{profile.name || profile.username}</strong>!
    You can check your <Link href='/profile'><a>profile</a></Link> or
    <a href={`${process.env.REACT_APP_API_URL}/logout?success=${redirect}`}> logout </a>
  </div>
)
