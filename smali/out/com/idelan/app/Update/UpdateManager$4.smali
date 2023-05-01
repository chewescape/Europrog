.class Lcom/idelan/app/Update/UpdateManager$4;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/app/Update/UpdateManager;->showDownloadDialog()V
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
    iput-object p1, p0, Lcom/idelan/app/Update/UpdateManager$4;->this$0:Lcom/idelan/app/Update/UpdateManager;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 194
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateManager$4;->this$0:Lcom/idelan/app/Update/UpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/idelan/app/Update/UpdateManager;->access$14(Lcom/idelan/app/Update/UpdateManager;Z)V

    .line 195
    sget-object v0, Lcom/idelan/app/Update/UpdateManager;->listener:Lcom/idelan/app/Update/UpdateListener;

    invoke-interface {v0}, Lcom/idelan/app/Update/UpdateListener;->breakUpdate()V

    .line 196
    return-void
.end method
