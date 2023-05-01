.class Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;
.super Lcom/delan/app/germanybluetooth/widget/swip/SimpleSwipeListener;
.source "SwipeItemMangerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeMemory"
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
    .line 190
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SimpleSwipeListener;-><init>()V

    .line 191
    iput p2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->position:I

    .line 192
    return-void
.end method


# virtual methods
.method public onClose(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 4
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Multiple:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_18

    .line 197
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    :goto_17
    return-void

    .line 199
    :cond_18
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    const/4 v1, -0x1

    iput v1, v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_17
.end method

.method public onOpen(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 4
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Multiple:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_18

    .line 213
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_17
    return-void

    .line 215
    :cond_18
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->closeAllExcept(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V

    .line 216
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->position:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_17
.end method

.method public onStartOpen(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 4
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Single:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_f

    .line 206
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->closeAllExcept(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V

    .line 208
    :cond_f
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->position:I

    .line 222
    return-void
.end method
