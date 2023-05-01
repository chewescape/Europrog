.class public Lcom/idelan/app/push/PushActivity;
.super Landroid/app/Activity;
.source "PushActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/app/push/PushActivity$webViewClient;
    }
.end annotation


# instance fields
.field private head_layout:Landroid/widget/RelativeLayout;

.field private left_text:Landroid/widget/TextView;

.field private right_text:Landroid/widget/TextView;

.field private title_text:Landroid/widget/TextView;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/idelan/app/push/PushActivity;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/idelan/app/push/PushActivity;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method private addEvent()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/idelan/app/push/PushActivity;->left_text:Landroid/widget/TextView;

    new-instance v1, Lcom/idelan/app/push/PushActivity$1;

    invoke-direct {v1, p0}, Lcom/idelan/app/push/PushActivity$1;-><init>(Lcom/idelan/app/push/PushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method private findView()V
    .registers 2

    .prologue
    .line 43
    .line 44
    const-string v0, "head_layout"

    .line 43
    invoke-static {p0, v0}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idelan/app/push/PushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/idelan/app/push/PushActivity;->head_layout:Landroid/widget/RelativeLayout;

    .line 46
    const-string v0, "title_text"

    .line 45
    invoke-static {p0, v0}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idelan/app/push/PushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/idelan/app/push/PushActivity;->title_text:Landroid/widget/TextView;

    .line 48
    const-string v0, "left_text"

    .line 47
    invoke-static {p0, v0}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idelan/app/push/PushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/idelan/app/push/PushActivity;->left_text:Landroid/widget/TextView;

    .line 50
    const-string v0, "right_text"

    .line 49
    invoke-static {p0, v0}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idelan/app/push/PushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/idelan/app/push/PushActivity;->right_text:Landroid/widget/TextView;

    .line 51
    const-string v0, "webview"

    invoke-static {p0, v0}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idelan/app/push/PushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/idelan/app/push/PushActivity;->webview:Landroid/webkit/WebView;

    .line 52
    return-void
.end method

.method private initView()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/idelan/app/push/PushActivity;->title_text:Landroid/widget/TextView;

    const-string v1, "\u6d88\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-direct {p0}, Lcom/idelan/app/push/PushActivity;->setWeb()V

    .line 57
    return-void
.end method

.method private setWeb()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 75
    iget-object v6, p0, Lcom/idelan/app/push/PushActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 77
    .local v5, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 81
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 82
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 83
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 84
    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/idelan/app/push/PushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "extra"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, "str":Ljava/lang/String;
    const-string v6, "hw"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz v3, :cond_8a

    .line 89
    :try_start_34
    const-string v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "json="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "t"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 92
    .local v4, "t":Ljava/lang/Object;
    const-string v6, "c"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "c":Ljava/lang/Object;
    if-eqz v4, :cond_95

    const-string v6, "2"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 95
    const-string v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "txt="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz v0, :cond_8a

    .line 97
    iget-object v6, p0, Lcom/idelan/app/push/PushActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_8a} :catch_b7

    .line 113
    .end local v0    # "c":Ljava/lang/Object;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "t":Ljava/lang/Object;
    :cond_8a
    :goto_8a
    iget-object v6, p0, Lcom/idelan/app/push/PushActivity;->webview:Landroid/webkit/WebView;

    new-instance v7, Lcom/idelan/app/push/PushActivity$webViewClient;

    invoke-direct {v7, p0, v10}, Lcom/idelan/app/push/PushActivity$webViewClient;-><init>(Lcom/idelan/app/push/PushActivity;Lcom/idelan/app/push/PushActivity$webViewClient;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    return-void

    .line 101
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "t":Ljava/lang/Object;
    :cond_95
    :try_start_95
    iget-object v6, p0, Lcom/idelan/app/push/PushActivity;->webview:Landroid/webkit/WebView;

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<html><meta http-equiv=\"content-type\" content=\"text/html;charset=utf-8\"><body>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</body></html>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 104
    const-string v8, "text/html; charset=UTF-8"

    const/4 v9, 0x0

    .line 101
    invoke-virtual {v6, v7, v8, v9}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_95 .. :try_end_b6} :catch_b7

    goto :goto_8a

    .line 106
    .end local v0    # "c":Ljava/lang/Object;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "t":Ljava/lang/Object;
    :catch_b7
    move-exception v1

    .line 107
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8a
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const-string v0, "activity_push"

    invoke-static {p0, v0}, Lcom/idelan/app/Util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idelan/app/push/PushActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/idelan/app/push/PushActivity;->findView()V

    .line 38
    invoke-direct {p0}, Lcom/idelan/app/push/PushActivity;->initView()V

    .line 39
    invoke-direct {p0}, Lcom/idelan/app/push/PushActivity;->addEvent()V

    .line 40
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 127
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/idelan/app/push/PushActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 128
    iget-object v0, p0, Lcom/idelan/app/push/PushActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 129
    const/4 v0, 0x1

    .line 132
    :goto_11
    return v0

    .line 131
    :cond_12
    invoke-virtual {p0}, Lcom/idelan/app/push/PushActivity;->finish()V

    .line 132
    const/4 v0, 0x0

    goto :goto_11
.end method
