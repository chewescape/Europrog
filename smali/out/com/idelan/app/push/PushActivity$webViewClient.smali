.class Lcom/idelan/app/push/PushActivity$webViewClient;
.super Landroid/webkit/WebViewClient;
.source "PushActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/push/PushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "webViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/app/push/PushActivity;


# direct methods
.method private constructor <init>(Lcom/idelan/app/push/PushActivity;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/idelan/app/push/PushActivity$webViewClient;->this$0:Lcom/idelan/app/push/PushActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/idelan/app/push/PushActivity;Lcom/idelan/app/push/PushActivity$webViewClient;)V
    .registers 3

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/idelan/app/push/PushActivity$webViewClient;-><init>(Lcom/idelan/app/push/PushActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
