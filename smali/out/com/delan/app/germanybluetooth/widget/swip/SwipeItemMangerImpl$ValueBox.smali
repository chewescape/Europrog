.class Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;
.super Ljava/lang/Object;
.source "SwipeItemMangerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValueBox"
.end annotation


# instance fields
.field onLayoutListener:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;

.field position:I

.field swipeMemory:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;ILcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;)V
    .registers 5
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;
    .param p2, "position"    # I
    .param p3, "swipeMemory"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;
    .param p4, "onLayoutListener"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;->swipeMemory:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;

    .line 158
    iput-object p4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;->onLayoutListener:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;

    .line 159
    iput p2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;->position:I

    .line 160
    return-void
.end method
