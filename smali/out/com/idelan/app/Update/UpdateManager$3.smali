.class Lcom/idelan/app/Update/UpdateManager$3;
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
    iput-object p1, p0, Lcom/idelan/app/Update/UpdateManager$3;->this$0:Lcom/idelan/app/Update/UpdateManager;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 162
    sget-object v0, Lcom/idelan/app/Update/UpdateManager;->listener:Lcom/idelan/app/Update/UpdateListener;

    invoke-interface {v0}, Lcom/idelan/app/Update/UpdateListener;->cancelUpdate()V

    .line 163
    return-void
.end method
