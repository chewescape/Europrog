.class Lcom/delan/app/germanybluetooth/widget/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/widget/WheelView;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->invalidateWheel(Z)V

    .line 218
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->invalidateWheel(Z)V

    .line 223
    return-void
.end method
