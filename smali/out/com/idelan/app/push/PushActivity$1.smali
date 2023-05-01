.class Lcom/idelan/app/push/PushActivity$1;
.super Ljava/lang/Object;
.source "PushActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/app/push/PushActivity;->addEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/app/push/PushActivity;


# direct methods
.method constructor <init>(Lcom/idelan/app/push/PushActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/app/push/PushActivity$1;->this$0:Lcom/idelan/app/push/PushActivity;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/idelan/app/push/PushActivity$1;->this$0:Lcom/idelan/app/push/PushActivity;

    invoke-static {v0}, Lcom/idelan/app/push/PushActivity;->access$0(Lcom/idelan/app/push/PushActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 64
    iget-object v0, p0, Lcom/idelan/app/push/PushActivity$1;->this$0:Lcom/idelan/app/push/PushActivity;

    invoke-static {v0}, Lcom/idelan/app/push/PushActivity;->access$0(Lcom/idelan/app/push/PushActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 68
    :goto_15
    return-void

    .line 67
    :cond_16
    iget-object v0, p0, Lcom/idelan/app/push/PushActivity$1;->this$0:Lcom/idelan/app/push/PushActivity;

    invoke-virtual {v0}, Lcom/idelan/app/push/PushActivity;->finish()V

    goto :goto_15
.end method
