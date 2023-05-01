.class final Lutils/DialogUtils$19;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutils/DialogUtils;->showTwoWheelTimeDialog(Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;)V
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
    .line 559
    iput-object p1, p0, Lutils/DialogUtils$19;->val$wheelView1:Lcom/delan/app/germanybluetooth/widget/WheelView;

    iput-object p2, p0, Lutils/DialogUtils$19;->val$wheelView2:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/delan/app/germanybluetooth/widget/WheelView;II)V
    .registers 11
    .param p1, "wheel"    # Lcom/delan/app/germanybluetooth/widget/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    const/16 v6, 0xa

    .line 561
    iget-object v4, p0, Lutils/DialogUtils$19;->val$wheelView1:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v4}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v0

    .line 563
    .local v0, "index":I
    if-ge v0, v6, :cond_52

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, "str1":Ljava/lang/String;
    :goto_1d
    iget-object v4, p0, Lutils/DialogUtils$19;->val$wheelView2:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v4}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v1

    .line 570
    .local v1, "index2":I
    if-ge v1, v6, :cond_66

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "str2":Ljava/lang/String;
    :goto_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lutils/DialogUtils;->witch:Ljava/lang/String;

    .line 576
    return-void

    .line 566
    .end local v1    # "index2":I
    .end local v2    # "str1":Ljava/lang/String;
    .end local v3    # "str2":Ljava/lang/String;
    :cond_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "str1":Ljava/lang/String;
    goto :goto_1d

    .line 573
    .restart local v1    # "index2":I
    :cond_66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "str2":Ljava/lang/String;
    goto :goto_38
.end method
