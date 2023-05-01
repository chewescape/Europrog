.class Lutils/WheelPopupWindowUtil$1;
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

.field final synthetic val$calendar:Ljava/util/Calendar;

.field final synthetic val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;

.field final synthetic val$wheelView02:Lcom/delan/app/germanybluetooth/widget/WheelView;

.field final synthetic val$wheelView03:Lcom/delan/app/germanybluetooth/widget/WheelView;


# direct methods
.method constructor <init>(Lutils/WheelPopupWindowUtil;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;Ljava/util/Calendar;)V
    .registers 6
    .param p1, "this$0"    # Lutils/WheelPopupWindowUtil;

    .prologue
    .line 106
    iput-object p1, p0, Lutils/WheelPopupWindowUtil$1;->this$0:Lutils/WheelPopupWindowUtil;

    iput-object p2, p0, Lutils/WheelPopupWindowUtil$1;->val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;

    iput-object p3, p0, Lutils/WheelPopupWindowUtil$1;->val$wheelView02:Lcom/delan/app/germanybluetooth/widget/WheelView;

    iput-object p4, p0, Lutils/WheelPopupWindowUtil$1;->val$wheelView03:Lcom/delan/app/germanybluetooth/widget/WheelView;

    iput-object p5, p0, Lutils/WheelPopupWindowUtil$1;->val$calendar:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/delan/app/germanybluetooth/widget/WheelView;II)V
    .registers 14
    .param p1, "wheel"    # Lcom/delan/app/germanybluetooth/widget/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 108
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$1;->val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit16 v2, v3, 0x7d0

    .line 109
    .local v2, "year":I
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$1;->val$wheelView02:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 110
    .local v1, "month":I
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$1;->val$wheelView03:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 111
    .local v0, "day":I
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$1;->this$0:Lutils/WheelPopupWindowUtil;

    const-string v4, "%d.%02d.%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 111
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lutils/WheelPopupWindowUtil;->access$002(Lutils/WheelPopupWindowUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$1;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 115
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$1;->val$calendar:Ljava/util/Calendar;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 116
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$1;->val$wheelView03:Lcom/delan/app/germanybluetooth/widget/WheelView;

    new-instance v4, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;

    iget-object v5, p0, Lutils/WheelPopupWindowUtil$1;->this$0:Lutils/WheelPopupWindowUtil;

    invoke-static {v5}, Lutils/WheelPopupWindowUtil;->access$100(Lutils/WheelPopupWindowUtil;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lutils/WheelPopupWindowUtil$1;->val$calendar:Ljava/util/Calendar;

    const/4 v7, 0x5

    .line 117
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    const-string v7, "%02d"

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 116
    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setViewAdapter(Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;)V

    .line 119
    return-void
.end method
