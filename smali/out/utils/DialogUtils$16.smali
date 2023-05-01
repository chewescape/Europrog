.class final Lutils/DialogUtils$16;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutils/DialogUtils;->showTwoWheelDialog(Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$wheelView1:Lcom/delan/app/germanybluetooth/widget/WheelView;

.field final synthetic val$wheelView2:Lcom/delan/app/germanybluetooth/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;)V
    .registers 3

    .prologue
    .line 481
    iput-object p1, p0, Lutils/DialogUtils$16;->val$wheelView1:Lcom/delan/app/germanybluetooth/widget/WheelView;

    iput-object p2, p0, Lutils/DialogUtils$16;->val$wheelView2:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/delan/app/germanybluetooth/widget/WheelView;II)V
    .registers 10
    .param p1, "wheel"    # Lcom/delan/app/germanybluetooth/widget/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 483
    iget-object v2, p0, Lutils/DialogUtils$16;->val$wheelView1:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v0

    .line 484
    .local v0, "index":I
    iget-object v2, p0, Lutils/DialogUtils$16;->val$wheelView2:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v1

    .line 485
    .local v1, "index2":I
    const-string v2, "%1$02d:%2$02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lutils/DialogUtils;->witch:Ljava/lang/String;

    .line 486
    return-void
.end method
