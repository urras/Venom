/*
 *    This file is part of Venom.
 *
 *    Venom is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    Venom is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with Venom.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace Venom {
  public class GroupChat : GLib.Object{

    public uint8[] public_key { get; set; }
    public int group_id { get; set; }
    public string local_name { get; set; }
    public Gdk.Pixbuf? image { get; set; }

    public GroupChat(uint8[] public_key, int group_id = -1) {
      this.public_key = public_key;
      this.group_id = group_id;
      this.local_name = "";
      this.image = null;
    }
    public GroupChat.from_id(int group_id) {
      this.public_key = null;
      this.group_id = group_id;
      this.local_name = "";
      this.image = null;
    }
  }
}
