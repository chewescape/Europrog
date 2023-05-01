.class Lutils/WheelPopupWindowUtil$2;
.super Ljava/lang/Object;
.source "WheelPopupWindowUtil.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutils/WheelPopupWindowUtil;->showDate(Ljava/util/Date;Lutils/WheelPopupWindowUtil$PopupCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lutils/WheelPopupWindowUtil;

.field final synthetic val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;

.field final synthetic val$wheelView02:Lcom/delan/app/germanybluetooth/widget/WheelView;

.field final synthetic val$wheelView03:Lcom/delan/app/germanybluetooth/widget/WheelView;


# direct methods
.method constructor <init>(Lutils/WheelPopupWindowUtil;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;)V
    .registers 5
    .param p1, "this$0"    # Lutils/WheelPopupWindowUtil;

    .prologue
    .line 121
    iput-object p1, p0, Lutils/WheelPopupWindowUtil$2;->this$0:Lutils/WheelPopupWindowUtil;

    iput-object p2, p0, Lutils/WheelPopupWindowUtil$2;->val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;

    iput-object p3, p0, Lutils/WheelPopupWindowUtil$2;->val$wheelView02:Lcom/delan/app/germanybluetooth/widget/WheelView;

    iput-object p4, p0, Lutils/WheelPopupWindowUtil$2;->val$wheelView03:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/delan/app/germanybluetooth/widget/WheelView;II)V
    .registers 12
    .param p1, "wheel"    # Lcom/delan/app/germanybluetooth/widget/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 123
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$2;->val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit16 v2, v3, 0x7d0

    .line 124
    .local v2, "year":I
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$2;->val$wheelView02:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 125
    .local v1, "month":I
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$2;->val$wheelView03:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 126
    .local v0, "day":I
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$2;->this$0:Lutils/WheelPopupWindowUtil;

    const-string v4, "%d.%02d.%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 126
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lutils/WheelPopupWindowUtil;->access$002(Lutils/WheelPopupWindowUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    return-void
.end method
