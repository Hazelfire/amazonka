{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.StatusCodes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.StatusCodes
  ( StatusCodes (..),

    -- * Smart constructor
    mkStatusCodes,

    -- * Lenses
    scQuantity,
    scItems,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.
--
-- /See:/ 'mkStatusCodes' smart constructor.
data StatusCodes = StatusCodes'
  { -- | The number of status codes.
    quantity :: Core.Int,
    -- | The items (status codes) for an origin group.
    items :: Core.NonEmpty Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StatusCodes' value with any optional fields omitted.
mkStatusCodes ::
  -- | 'quantity'
  Core.Int ->
  -- | 'items'
  Core.NonEmpty Core.Int ->
  StatusCodes
mkStatusCodes quantity items = StatusCodes' {quantity, items}

-- | The number of status codes.
--
-- /Note:/ Consider using 'quantity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scQuantity :: Lens.Lens' StatusCodes Core.Int
scQuantity = Lens.field @"quantity"
{-# DEPRECATED scQuantity "Use generic-lens or generic-optics with 'quantity' instead." #-}

-- | The items (status codes) for an origin group.
--
-- /Note:/ Consider using 'items' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scItems :: Lens.Lens' StatusCodes (Core.NonEmpty Core.Int)
scItems = Lens.field @"items"
{-# DEPRECATED scItems "Use generic-lens or generic-optics with 'items' instead." #-}

instance Core.ToXML StatusCodes where
  toXML StatusCodes {..} =
    Core.toXMLNode "Quantity" quantity
      Core.<> Core.toXMLNode "Items" (Core.toXMLList "StatusCode" items)

instance Core.FromXML StatusCodes where
  parseXML x =
    StatusCodes'
      Core.<$> (x Core..@ "Quantity")
      Core.<*> (x Core..@ "Items" Core..<@> Core.parseXMLNonEmpty "StatusCode")