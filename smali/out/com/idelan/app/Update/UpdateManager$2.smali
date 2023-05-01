.class Lcom/idelan/app/Update/UpdateManager$2;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/app/Update/UpdateManager;->showNoticeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/app/Update/UpdateManager;


# direct methods
.method constructor <init>(Lcom/idelan/app/Update/UpdateManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/app/Update/UpdateManager$2;->this$0:Lcom/idelan/app/Update/UpdateManager;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    sget-object v1, Lcom/idelan/app/Update/UpdateManager;->listener:Lcom/idelan/app/Update/UpdateListener;

    invoke-interface {v1}, Lcom/idelan/app/Update/UpdateListener;->isUpdate()V

    .line 142
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateManager$2;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v1}, Lcom/idelan/app/Update/UpdateManager;->access$12(Lcom/idelan/app/Update/UpdateManager;)I

    move-result v1

    const v2, 0x1d97c

    if-ne v1, v2, :cond_19

    .line 144
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateManager$2;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v1}, Lcom/idelan/app/Update/UpdateManager;->access$13(Lcom/idelan/app/Update/UpdateManager;)V

    .line 153
    :cond_18
    :goto_18
    return-void

    .line 145
    :cond_19
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateManager$2;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v1}, Lcom/idelan/app/Update/UpdateManager;->access$12(Lcom/idelan/app/Update/UpdateManager;)I

    move-result v1

    const v2, 0x200f1

    if-ne v1, v2, :cond_18

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/idelan/app/Update/UpdateManager$2;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v1}, Lcom/idelan/app/Update/UpdateManager;->access$7(Lcom/idelan/app/Update/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    .line 147
    const-class v2, Lcom/idelan/app/Update/UpdateService;

    .line 146
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Key_App_Name"

    .line 149
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateManager$2;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v2}, Lcom/idelan/app/Update/UpdateManager;->access$7(Lcom/idelan/app/Update/UpdateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/idelan/app/Util/AppUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v1, "Key_Down_Url"

    iget-object v2, p0, Lcom/idelan/app/Update/UpdateManager$2;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v2}, Lcom/idelan/app/Update/UpdateManager;->access$5(Lcom/idelan/app/Update/UpdateManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateManager$2;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v1}, Lcom/idelan/app/Update/UpdateManager;->access$7(Lcom/idelan/app/Update/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_18
.end method
