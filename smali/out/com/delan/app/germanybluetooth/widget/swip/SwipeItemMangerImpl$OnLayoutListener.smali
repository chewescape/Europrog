.class Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;
.super Ljava/lang/Object;
.source "SwipeItemMangerImpl.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnLayoutListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;
    .param p2, "position"    # I

    .prologue
    .line 167
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;->position:I

    .line 169
    return-void
.end method


# virtual methods
.method public onLayout(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 5
    .param p1, "v"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;->position:I

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->isOpen(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 178
    invoke-virtual {p1, v2, v2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open(ZZ)V

    .line 182
    :goto_e
    return-void

    .line 180
    :cond_f
    invoke-virtual {p1, v2, v2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close(ZZ)V

    goto :goto_e
.end method

.method public setPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;->position:I

    .line 173
    return-void
.end method
