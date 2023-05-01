.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;
.super Lutils/WheelPopupWindowUtil$PopupCallBack;
.source "ProgmaticHolidayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutils/WheelPopupWindowUtil$PopupCallBack",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    invoke-direct {p0}, Lutils/WheelPopupWindowUtil$PopupCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 155
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 14
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->position:I

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v11

    .line 159
    .local v11, "holiday":Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
    invoke-virtual {v11}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getStartDateStr()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "startDateStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getStartTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "startTimeStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getEndTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "endTimeStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v1

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$800(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 163
    invoke-super {p0, p1}, Lutils/WheelPopupWindowUtil$PopupCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->access$900(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {v11, p1, v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->dateStringToNum(Ljava/lang/String;Z)V

    .line 166
    move-object v10, p1

    .line 168
    .local v10, "endDateStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v1

    new-instance v6, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1$1;

    move-object v7, p0

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;)V

    invoke-static {v1, v6}, Lutils/DialogUtils;->showTwoWheelDialog(Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->dialog:Landroid/app/Dialog;

    .line 182
    .end local v10    # "endDateStr":Ljava/lang/String;
    :goto_6e
    return-void

    .line 181
    :cond_6f
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v0

    const v1, 0x7f06004a

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    goto :goto_6e
.end method
