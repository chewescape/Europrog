.class final Lutils/DialogUtils$13;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V
    .registers 2

    .prologue
    .line 406
    iput-object p1, p0, Lutils/DialogUtils$13;->val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/delan/app/germanybluetooth/widget/WheelView;II)V
    .registers 7
    .param p1, "wheel"    # Lcom/delan/app/germanybluetooth/widget/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 408
    iget-object v1, p0, Lutils/DialogUtils$13;->val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v0

    .line 410
    .local v0, "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lutils/DialogUtils;->witch:Ljava/lang/String;

    .line 412
    return-void
.end method
