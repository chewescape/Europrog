.class Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;
.super Ljava/lang/Object;
.source "HolidayTimeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->showDialog(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

.field final synthetic val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->val$holder:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->hasDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 184
    :goto_c
    return-void

    .line 172
    :cond_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->arr:[Ljava/lang/String;

    new-instance v3, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3$1;

    invoke-direct {v3, p0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;)V

    invoke-static {v1, v2, v3}, Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->dialog:Landroid/app/Dialog;

    goto :goto_c
.end method
