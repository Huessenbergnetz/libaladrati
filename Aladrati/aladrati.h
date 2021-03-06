/* libaladrati - Qt based library to perform internet connection speed tests using speedtest.net
 * Copyright (C) 2016 Huessenbergnetz / Matthias Fehring
 * https://github.com/Huessenbergnetz/libaladrati
 *
 * This library is free software: you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library.  If not, see
 * <http://www.gnu.org/licenses/>.
 */

#ifndef ALADRATI
#define ALADRATI

#include "fuoten_global.h"
#include <QMetaType>

namespace Aladrati {

/*!
 * \brief Provides global enumerations.
 *
 * \headerfile "" <Aladrati/Aladrati>
 */
class ALADRATISHARED_EXPORT Aladrati {
    Q_GADGET
public:

private:
    Aladrati();
    ~Aladrati();
};
}

#endif // ALADRATI

