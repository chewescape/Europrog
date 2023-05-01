.class public abstract Lcom/delan/app/germanybluetooth/base/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "InflateParams",
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;
    }
.end annotation


# instance fields
.field protected actionBarRL:Landroid/widget/RelativeLayout;

.field public baseView:Landroid/view/View;

.field public dialog:Landroid/app/Dialog;

.field private iconIV:Landroid/widget/ImageView;

.field private layoutId:I

.field private leftIV:Landroid/widget/ImageView;

.field public leftTV:Landroid/widget/TextView;

.field protected mLoadingDialog:Landroid/app/ProgressDialog;

.field private rightIV:Landroid/widget/ImageView;

.field public rightTV:Landroid/widget/TextView;

.field private rootLayout:Landroid/widget/LinearLayout;

.field public titleTV:Landroid/widget/TextView;

.field protected uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private hideSoftInput(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 435
    if-eqz p1, :cond_e

    .line 437
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 438
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 441
    .end local v0    # "im":Landroid/view/inputmethod/InputMethodManager;
    :cond_e
    return-void
.end method

.method private initActionBar()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 87
    const v2, 0x7f04001a

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->setContentView(I)V

    .line 88
    const v2, 0x7f0d007c

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->layoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    const v2, 0x7f0d0075

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->actionBarRL:Landroid/widget/RelativeLayout;

    .line 92
    const v2, 0x7f0d0077

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->titleTV:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f0d0076

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->leftIV:Landroid/widget/ImageView;

    .line 94
    const v2, 0x7f0d0079

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->rightIV:Landroid/widget/ImageView;

    .line 95
    const v2, 0x7f0d007b

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->rootLayout:Landroid/widget/LinearLayout;

    .line 96
    const v2, 0x7f0d0078

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->rightTV:Landroid/widget/TextView;

    .line 97
    const v2, 0x7f0d007a

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->baseView:Landroid/view/View;

    .line 98
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->leftIV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->rightIV:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->rightTV:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 483
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 484
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_20

    .line 485
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 486
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_20

    .line 487
    const/4 v2, 0x1

    .line 491
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 419
    if-eqz p1, :cond_46

    instance-of v7, p1, Landroid/widget/EditText;

    if-eqz v7, :cond_46

    .line 420
    const/4 v7, 0x2

    new-array v1, v7, [I

    fill-array-data v1, :array_48

    .line 421
    .local v1, "l":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 422
    aget v2, v1, v5

    .local v2, "left":I
    aget v4, v1, v6

    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 423
    .local v0, "bottom":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 424
    .local v3, "right":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_45

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_45

    .line 425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_45

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_46

    :cond_45
    move v5, v6

    .line 428
    .end local v0    # "bottom":I
    .end local v1    # "l":[I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_46
    return v5

    .line 420
    nop

    :array_48
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected dismissLoadingDialog()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 367
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 368
    :cond_9
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_17

    .line 406
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 408
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 409
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->hideSoftInput(Landroid/os/IBinder;)V

    .line 412
    .end local v0    # "v":Landroid/view/View;
    :cond_17
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public doClickLeftAction()V
    .registers 1

    .prologue
    .line 168
    return-void
.end method

.method public doClickLeftTextAction()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method

.method public doClickRightAction()V
    .registers 1

    .prologue
    .line 165
    return-void
.end method

.method public doClickRightTextAction()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method

.method public doHiddenActionBar()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->actionBarRL:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    return-void
.end method

.method public doHiddenLeftAction()V
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->leftIV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    return-void
.end method

.method public doHiddenLeftTextAction()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->leftTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    return-void
.end method

.method public doHiddenRightAction()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->rightIV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public doHiddenRightTextAction()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->rightTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    return-void
.end method

.method protected drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 374
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 376
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 378
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 377
    :goto_12
    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 381
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 382
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v6, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 384
    return-object v0

    .line 378
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_22
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_12
.end method

.method protected fillView()V
    .registers 1

    .prologue
    .line 180
    return-void
.end method

.method public gotoActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 6
    .param p1, "from"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    const v1, 0x7f05000a

    const v2, 0x7f05000b

    invoke-virtual {p0, v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->overridePendingTransition(II)V

    .line 232
    return-void
.end method

.method public gotoActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;)V
    .registers 7
    .param p1, "from"    # Landroid/content/Context;
    .param p3, "sb"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/io/Serializable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXAR_DATA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    const v1, 0x7f05000a

    const v2, 0x7f05000b

    invoke-virtual {p0, v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->overridePendingTransition(II)V

    .line 247
    return-void
.end method

.method public gotoActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;I)V
    .registers 8
    .param p1, "from"    # Landroid/content/Context;
    .param p3, "sb"    # Ljava/io/Serializable;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/io/Serializable;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXAR_DATA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 278
    const-string v1, "INTEGER_DATA"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 280
    const v1, 0x7f05000a

    const v2, 0x7f05000b

    invoke-virtual {p0, v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->overridePendingTransition(II)V

    .line 281
    return-void
.end method

.method public gotoActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;Ljava/lang/String;)V
    .registers 8
    .param p1, "from"    # Landroid/content/Context;
    .param p3, "sb"    # Ljava/io/Serializable;
    .param p4, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/io/Serializable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXAR_DATA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 261
    const-string v1, "STRING_DATA"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 263
    const v1, 0x7f05000a

    const v2, 0x7f05000b

    invoke-virtual {p0, v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->overridePendingTransition(II)V

    .line 264
    return-void
.end method

.method public gotoActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4
    .param p1, "from"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->finish()V

    .line 293
    return-void
.end method

.method public gotoActivityForResult(Landroid/content/Context;Ljava/lang/Class;I)V
    .registers 7
    .param p1, "from"    # Landroid/content/Context;
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p3}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 321
    const v1, 0x7f05000a

    const v2, 0x7f05000b

    invoke-virtual {p0, v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->overridePendingTransition(II)V

    .line 322
    return-void
.end method

.method public gotoActivityForResult(Landroid/content/Context;Ljava/lang/Class;II)V
    .registers 8
    .param p1, "from"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p4, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "INTEGER_DATA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v0, p4}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 337
    const v1, 0x7f05000a

    const v2, 0x7f05000b

    invoke-virtual {p0, v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->overridePendingTransition(II)V

    .line 338
    return-void
.end method

.method public gotoActivityForResult(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;I)V
    .registers 8
    .param p1, "from"    # Landroid/content/Context;
    .param p3, "sb"    # Ljava/io/Serializable;
    .param p4, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/io/Serializable;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXAR_DATA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v0, p4}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    const v1, 0x7f05000a

    const v2, 0x7f05000b

    invoke-virtual {p0, v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->overridePendingTransition(II)V

    .line 308
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 480
    return-void
.end method

.method public hasDialogShowing()Z
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected initView()V
    .registers 1

    .prologue
    .line 177
    return-void
.end method

.method protected inputIsEncrypt(Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .registers 5
    .param p1, "et"    # Landroid/widget/EditText;
    .param p2, "cb"    # Landroid/widget/CheckBox;

    .prologue
    const/16 v1, 0x81

    .line 389
    invoke-virtual {p1}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    if-ne v0, v1, :cond_1d

    .line 390
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 391
    const/16 v0, 0x90

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 398
    :goto_11
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 399
    return-void

    .line 394
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 395
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_11
.end method

.method protected loadData()V
    .registers 1

    .prologue
    .line 184
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 216
    :goto_7
    :pswitch_7
    return-void

    .line 205
    :pswitch_8
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->doClickLeftAction()V

    goto :goto_7

    .line 208
    :pswitch_c
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->doClickRightAction()V

    goto :goto_7

    .line 211
    :pswitch_10
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->doClickRightTextAction()V

    goto :goto_7

    .line 203
    :pswitch_data_14
    .packed-switch 0x7f0d0076
        :pswitch_8
        :pswitch_7
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/idelan/app/Util/AppManager;->getAppManager()Lcom/idelan/app/Util/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/idelan/app/Util/AppManager;->addActivity(Landroid/app/Activity;)V

    .line 63
    new-instance v0, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;-><init>(Lcom/delan/app/germanybluetooth/base/BaseActivity;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    .line 64
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->initView()V

    .line 65
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->loadData()V

    .line 66
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->fillView()V

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 72
    invoke-static {}, Lcom/idelan/app/Util/AppManager;->getAppManager()Lcom/idelan/app/Util/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/idelan/app/Util/AppManager;->addActivity(Landroid/app/Activity;)V

    .line 73
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->initView()V

    .line 74
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->loadData()V

    .line 75
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->fillView()V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 197
    invoke-static {}, Lcom/idelan/app/Util/AppManager;->getAppManager()Lcom/idelan/app/Util/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/idelan/app/Util/AppManager;->finishActivity(Landroid/app/Activity;)V

    .line 198
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 199
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 343
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    if-eqz v0, :cond_12

    .line 344
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 345
    iput-object v1, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    .line 347
    :cond_12
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 348
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->dismissLoadingDialog()V

    .line 450
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    .line 451
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->dialog:Landroid/app/Dialog;

    .line 454
    :cond_f
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 455
    return-void
.end method

.method public setActionBarBgColor(I)V
    .registers 4
    .param p1, "colorId"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->actionBarRL:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 130
    return-void
.end method

.method public setActionBarBgDrawable(I)V
    .registers 4
    .param p1, "drawableId"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->actionBarRL:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void
.end method

.method public setActionBarLeft(I)V
    .registers 4
    .param p1, "drawableId"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->leftIV:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method

.method public setActionBarLeftText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->leftTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public setActionBarRight(I)V
    .registers 4
    .param p1, "drawableId"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->rightIV:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    return-void
.end method

.method public setActionBarRightText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->rightTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public setActionBarTitle(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public setBackGround(I)V
    .registers 3
    .param p1, "resourceID"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 106
    return-void
.end method

.method public setBackGroundColor(I)V
    .registers 3
    .param p1, "resourceID"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 110
    return-void
.end method

.method public setView(I)V
    .registers 2
    .param p1, "layoutId"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->layoutId:I

    .line 80
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->initActionBar()V

    .line 81
    return-void
.end method

.method protected showLoadingDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3b

    .line 352
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 353
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_15

    .line 363
    :goto_14
    return-void

    .line 355
    :cond_15
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 357
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->mLoadingDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f040040

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 359
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 360
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_14

    .line 362
    :cond_3b
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseActivity;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_14
.end method
