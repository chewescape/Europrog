.class Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1$1;
.super Lutils/DialogUtils$DialogCallBack;
.source "HolidayTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;->onPositiveButton(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutils/DialogUtils$DialogCallBack",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;

.field final synthetic val$holiday:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;)V
    .registers 3
    .param p1, "this$2"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1$1;->val$holiday:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 116
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$200(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1$1;->val$holiday:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->timeStringToNum(Ljava/lang/String;Z)V

    .line 122
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1$1;->val$holiday:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-static {v0, v1, v2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$900(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;)V

    .line 123
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$800(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->position:I

    invoke-interface {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;->onHolidaySettingChanged(I)V

    .line 124
    return-void
.end method
