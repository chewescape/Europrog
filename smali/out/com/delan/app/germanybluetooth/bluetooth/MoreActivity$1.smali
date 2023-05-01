.class Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity$1;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->fillView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 48
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "isOpen"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method
