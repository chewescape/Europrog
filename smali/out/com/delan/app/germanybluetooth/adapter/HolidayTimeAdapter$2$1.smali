.class Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;
.super Lutils/WheelPopupWindowUtil$PopupCallBack;
.source "HolidayTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    invoke-direct {p0}, Lutils/WheelPopupWindowUtil$PopupCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 135
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 14
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->position:I

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$700(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;I)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getStartDateStr()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "startDateStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->position:I

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$700(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;I)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getStartTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "startTimeStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->position:I

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$700(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;I)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getEndTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "endTimeStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v1

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$1100(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 142
    invoke-super {p0, p1}, Lutils/WheelPopupWindowUtil$PopupCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$300(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->position:I

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$700(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;I)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v11

    .line 145
    .local v11, "holiday":Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
    const/4 v0, 0x0

    invoke-virtual {v11, p1, v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->dateStringToNum(Ljava/lang/String;Z)V

    .line 146
    move-object v10, p1

    .line 147
    .local v10, "endDateStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$800(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->position:I

    invoke-interface {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;->onHolidaySettingChanged(I)V

    .line 149
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v1

    new-instance v6, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;

    move-object v7, p0

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;)V

    invoke-static {v1, v6}, Lutils/DialogUtils;->showTwoWheelDialog(Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->dialog:Landroid/app/Dialog;

    .line 163
    .end local v10    # "endDateStr":Ljava/lang/String;
    .end local v11    # "holiday":Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
    :goto_a9
    return-void

    .line 162
    :cond_aa
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v0

    const v1, 0x7f06004a

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    goto :goto_a9
.end method
