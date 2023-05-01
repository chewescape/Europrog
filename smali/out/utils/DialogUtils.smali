.class public Lutils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutils/DialogUtils$DialogCallBack;
    }
.end annotation


# static fields
.field public static witch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static confirmDialog(Ljava/lang/String;Landroid/content/Context;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
    .registers 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lutils/DialogUtils$DialogCallBack;

    .prologue
    .line 628
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 629
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f060074

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 630
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 631
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 632
    const v3, 0x7f06003a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lutils/DialogUtils$22;

    invoke-direct {v4, p2}, Lutils/DialogUtils$22;-><init>(Lutils/DialogUtils$DialogCallBack;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 642
    const v3, 0x7f060036

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lutils/DialogUtils$23;

    invoke-direct {v4, p2}, Lutils/DialogUtils$23;-><init>(Lutils/DialogUtils$DialogCallBack;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 653
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 654
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 659
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_3f
    return-object v0

    .line 656
    :catch_40
    move-exception v2

    .line 657
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "gw"

    const-string v4, "simpleDialog:activity is not running!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public static inputDialog(Ljava/lang/String;Landroid/content/Context;Lutils/DialogUtils$DialogCallBack;)V
    .registers 11
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lutils/DialogUtils$DialogCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "callBack":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<Ljava/lang/String;>;"
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xa

    if-le v6, v7, :cond_5e

    .line 52
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v6, 0x7f090140

    invoke-direct {v1, p1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 57
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    :goto_e
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 58
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040025

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 59
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0d009f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 61
    .local v3, "editText":Landroid/widget/EditText;
    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 64
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 65
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 66
    const v6, 0x7f06003a

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lutils/DialogUtils$1;

    invoke-direct {v7, p2, v3}, Lutils/DialogUtils$1;-><init>(Lutils/DialogUtils$DialogCallBack;Landroid/widget/EditText;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    const v6, 0x7f060036

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lutils/DialogUtils$2;

    invoke-direct {v7, p2}, Lutils/DialogUtils$2;-><init>(Lutils/DialogUtils$DialogCallBack;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 87
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 92
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "editText":Landroid/widget/EditText;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "view":Landroid/view/View;
    :goto_5d
    return-void

    .line 54
    :cond_5e
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_64

    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_e

    .line 89
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :catch_64
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "gw"

    const-string v7, "simpleDialog:activity is not running!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method

.method public static showAddDialog(Landroid/app/Activity;Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
    .registers 21
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "hint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lutils/DialogUtils$DialogCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "callBack":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 273
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f040024

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 274
    .local v10, "layout":Landroid/view/View;
    new-instance v4, Landroid/app/Dialog;

    const v13, 0x7f090135

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 275
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 276
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 278
    const v13, 0x7f0d009c

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 279
    .local v8, "editText":Landroid/widget/EditText;
    const v13, 0x7f0d009d

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 280
    .local v2, "btnCancel":Landroid/widget/TextView;
    const v13, 0x7f0d009e

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 281
    .local v3, "btnCommit":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 284
    .local v5, "dialogWindow":Landroid/view/Window;
    if-nez v5, :cond_45

    .line 285
    const/4 v4, 0x0

    .line 321
    .end local v2    # "btnCancel":Landroid/widget/TextView;
    .end local v3    # "btnCommit":Landroid/widget/TextView;
    .end local v4    # "dialog":Landroid/app/Dialog;
    .end local v5    # "dialogWindow":Landroid/view/Window;
    .end local v8    # "editText":Landroid/widget/EditText;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    :goto_44
    return-object v4

    .line 286
    .restart local v2    # "btnCancel":Landroid/widget/TextView;
    .restart local v3    # "btnCommit":Landroid/widget/TextView;
    .restart local v4    # "dialog":Landroid/app/Dialog;
    .restart local v5    # "dialogWindow":Landroid/view/Window;
    .restart local v8    # "editText":Landroid/widget/EditText;
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "layout":Landroid/view/View;
    :cond_45
    const/16 v13, 0x11

    invoke-virtual {v5, v13}, Landroid/view/Window;->setGravity(I)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 288
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 289
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 291
    .local v11, "p":Landroid/view/WindowManager$LayoutParams;
    iget v13, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v14, v13

    const-wide v16, 0x3fe999999999999aL    # 0.8

    mul-double v14, v14, v16

    double-to-int v13, v14

    iput v13, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 292
    invoke-virtual {v5, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 294
    new-instance v13, Lutils/DialogUtils$9;

    invoke-direct {v13, v4}, Lutils/DialogUtils$9;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    new-instance v13, Lutils/DialogUtils$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v8, v0, v1, v4}, Lutils/DialogUtils$10;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;Landroid/app/Dialog;)V

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_44

    .line 318
    .end local v2    # "btnCancel":Landroid/widget/TextView;
    .end local v3    # "btnCommit":Landroid/widget/TextView;
    .end local v4    # "dialog":Landroid/app/Dialog;
    .end local v5    # "dialogWindow":Landroid/view/Window;
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "editText":Landroid/widget/EditText;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    .end local v11    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :catch_7e
    move-exception v7

    .line 319
    .local v7, "e":Ljava/lang/Exception;
    const-string v13, "gw"

    const-string v14, "OneWheelDialog:activity is not running!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v4, 0x0

    goto :goto_44
.end method

.method public static showChangePinDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
    .registers 22
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lutils/DialogUtils$DialogCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 329
    .local p3, "callBack":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 330
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f040027

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 331
    .local v10, "layout":Landroid/view/View;
    new-instance v4, Landroid/app/Dialog;

    const v14, 0x7f090135

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 332
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 333
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 335
    const v14, 0x7f0d00a0

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 336
    .local v13, "titleTV":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const v14, 0x7f0d00a1

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 339
    .local v8, "editText":Landroid/widget/EditText;
    const v14, 0x7f0d00a2

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 340
    .local v2, "btnCancel":Landroid/widget/TextView;
    const v14, 0x7f0d00a3

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 341
    .local v3, "btnCommit":Landroid/widget/TextView;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 342
    const/4 v14, 0x2

    invoke-virtual {v8, v14}, Landroid/widget/EditText;->setInputType(I)V

    .line 344
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 345
    .local v5, "dialogWindow":Landroid/view/Window;
    if-nez v5, :cond_57

    .line 346
    const/4 v4, 0x0

    .line 382
    .end local v2    # "btnCancel":Landroid/widget/TextView;
    .end local v3    # "btnCommit":Landroid/widget/TextView;
    .end local v4    # "dialog":Landroid/app/Dialog;
    .end local v5    # "dialogWindow":Landroid/view/Window;
    .end local v8    # "editText":Landroid/widget/EditText;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    .end local v13    # "titleTV":Landroid/widget/TextView;
    :goto_56
    return-object v4

    .line 347
    .restart local v2    # "btnCancel":Landroid/widget/TextView;
    .restart local v3    # "btnCommit":Landroid/widget/TextView;
    .restart local v4    # "dialog":Landroid/app/Dialog;
    .restart local v5    # "dialogWindow":Landroid/view/Window;
    .restart local v8    # "editText":Landroid/widget/EditText;
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "layout":Landroid/view/View;
    .restart local v13    # "titleTV":Landroid/widget/TextView;
    :cond_57
    const/16 v14, 0x11

    invoke-virtual {v5, v14}, Landroid/view/Window;->setGravity(I)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 349
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 350
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 352
    .local v11, "p":Landroid/view/WindowManager$LayoutParams;
    iget v14, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v14, v14

    const-wide v16, 0x3fe999999999999aL    # 0.8

    mul-double v14, v14, v16

    double-to-int v14, v14

    iput v14, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 353
    invoke-virtual {v5, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 355
    new-instance v14, Lutils/DialogUtils$11;

    invoke-direct {v14, v4}, Lutils/DialogUtils$11;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    new-instance v14, Lutils/DialogUtils$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v14, v8, v0, v1, v4}, Lutils/DialogUtils$12;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;Landroid/app/Dialog;)V

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8f} :catch_90

    goto :goto_56

    .line 379
    .end local v2    # "btnCancel":Landroid/widget/TextView;
    .end local v3    # "btnCommit":Landroid/widget/TextView;
    .end local v4    # "dialog":Landroid/app/Dialog;
    .end local v5    # "dialogWindow":Landroid/view/Window;
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "editText":Landroid/widget/EditText;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    .end local v11    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "titleTV":Landroid/widget/TextView;
    :catch_90
    move-exception v7

    .line 380
    .local v7, "e":Ljava/lang/Exception;
    const-string v14, "gw"

    const-string v15, "OneWheelDialog:activity is not running!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v4, 0x0

    goto :goto_56
.end method

.method public static showInputBluetoothDialog(Landroid/app/Activity;Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
    .registers 21
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "hint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lutils/DialogUtils$DialogCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "callBack":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 100
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f040028

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 101
    .local v10, "layout":Landroid/view/View;
    new-instance v4, Landroid/app/Dialog;

    const v14, 0x7f090135

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 102
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 103
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 105
    const v14, 0x7f0d00a0

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 106
    .local v13, "titleText":Landroid/widget/TextView;
    const v14, 0x7f0d00a4

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 107
    .local v9, "inputText":Landroid/widget/EditText;
    const v14, 0x7f0d009d

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    .local v2, "btnCancel":Landroid/widget/TextView;
    const v14, 0x7f0d009e

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 109
    .local v3, "btnCommit":Landroid/widget/TextView;
    const v14, 0x7f06005d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 113
    .local v5, "dialogWindow":Landroid/view/Window;
    if-nez v5, :cond_5a

    .line 114
    const/4 v4, 0x0

    .line 150
    .end local v2    # "btnCancel":Landroid/widget/TextView;
    .end local v3    # "btnCommit":Landroid/widget/TextView;
    .end local v4    # "dialog":Landroid/app/Dialog;
    .end local v5    # "dialogWindow":Landroid/view/Window;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "inputText":Landroid/widget/EditText;
    .end local v10    # "layout":Landroid/view/View;
    .end local v13    # "titleText":Landroid/widget/TextView;
    :goto_59
    return-object v4

    .line 115
    .restart local v2    # "btnCancel":Landroid/widget/TextView;
    .restart local v3    # "btnCommit":Landroid/widget/TextView;
    .restart local v4    # "dialog":Landroid/app/Dialog;
    .restart local v5    # "dialogWindow":Landroid/view/Window;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v9    # "inputText":Landroid/widget/EditText;
    .restart local v10    # "layout":Landroid/view/View;
    .restart local v13    # "titleText":Landroid/widget/TextView;
    :cond_5a
    const/16 v14, 0x11

    invoke-virtual {v5, v14}, Landroid/view/Window;->setGravity(I)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 117
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 118
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 120
    .local v11, "p":Landroid/view/WindowManager$LayoutParams;
    iget v14, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v14, v14

    const-wide v16, 0x3fe999999999999aL    # 0.8

    mul-double v14, v14, v16

    double-to-int v14, v14

    iput v14, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 121
    invoke-virtual {v5, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 123
    new-instance v14, Lutils/DialogUtils$3;

    invoke-direct {v14, v4}, Lutils/DialogUtils$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v14, Lutils/DialogUtils$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v9, v0, v1, v4}, Lutils/DialogUtils$4;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;Landroid/app/Dialog;)V

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_92} :catch_93

    goto :goto_59

    .line 147
    .end local v2    # "btnCancel":Landroid/widget/TextView;
    .end local v3    # "btnCommit":Landroid/widget/TextView;
    .end local v4    # "dialog":Landroid/app/Dialog;
    .end local v5    # "dialogWindow":Landroid/view/Window;
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "inputText":Landroid/widget/EditText;
    .end local v10    # "layout":Landroid/view/View;
    .end local v11    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "titleText":Landroid/widget/TextView;
    :catch_93
    move-exception v7

    .line 148
    .local v7, "e":Ljava/lang/Exception;
    const-string v14, "gw"

    const-string v15, "OneWheelDialog:activity is not running!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v4, 0x0

    goto :goto_59
.end method

.method public static showInputDialog(Landroid/app/Activity;Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
    .registers 21
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "hint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lutils/DialogUtils$DialogCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 217
    .local p2, "callBack":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 218
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f040026

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 219
    .local v10, "layout":Landroid/view/View;
    new-instance v4, Landroid/app/Dialog;

    const v13, 0x7f090135

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 220
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 221
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 223
    const v13, 0x7f0d009c

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 224
    .local v8, "editText":Landroid/widget/EditText;
    const v13, 0x7f0d009d

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 225
    .local v2, "btnCancel":Landroid/widget/TextView;
    const v13, 0x7f0d009e

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 226
    .local v3, "btnCommit":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 229
    .local v5, "dialogWindow":Landroid/view/Window;
    if-nez v5, :cond_45

    .line 230
    const/4 v4, 0x0

    .line 264
    .end local v2    # "btnCancel":Landroid/widget/TextView;
    .end local v3    # "btnCommit":Landroid/widget/TextView;
    .end local v4    # "dialog":Landroid/app/Dialog;
    .end local v5    # "dialogWindow":Landroid/view/Window;
    .end local v8    # "editText":Landroid/widget/EditText;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    :goto_44
    return-object v4

    .line 231
    .restart local v2    # "btnCancel":Landroid/widget/TextView;
    .restart local v3    # "btnCommit":Landroid/widget/TextView;
    .restart local v4    # "dialog":Landroid/app/Dialog;
    .restart local v5    # "dialogWindow":Landroid/view/Window;
    .restart local v8    # "editText":Landroid/widget/EditText;
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "layout":Landroid/view/View;
    :cond_45
    const/16 v13, 0x11

    invoke-virtual {v5, v13}, Landroid/view/Window;->setGravity(I)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 233
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 234
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 236
    .local v11, "p":Landroid/view/WindowManager$LayoutParams;
    iget v13, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v14, v13

    const-wide v16, 0x3fe999999999999aL    # 0.8

    mul-double v14, v14, v16

    double-to-int v13, v14

    iput v13, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 237
    invoke-virtual {v5, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 239
    new-instance v13, Lutils/DialogUtils$7;

    invoke-direct {v13, v4}, Lutils/DialogUtils$7;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    new-instance v13, Lutils/DialogUtils$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v8, v0, v1}, Lutils/DialogUtils$8;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;)V

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_44

    .line 261
    .end local v2    # "btnCancel":Landroid/widget/TextView;
    .end local v3    # "btnCommit":Landroid/widget/TextView;
    .end local v4    # "dialog":Landroid/app/Dialog;
    .end local v5    # "dialogWindow":Landroid/view/Window;
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "editText":Landroid/widget/EditText;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    .end local v11    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :catch_7e
    move-exception v7

    .line 262
    .local v7, "e":Ljava/lang/Exception;
    const-string v13, "gw"

    const-string v14, "OneWheelDialog:activity is not running!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v4, 0x0

    goto :goto_44
.end method

.method public static showInputRoomDialog(Landroid/app/Activity;Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
    .registers 21
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "hint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lutils/DialogUtils$DialogCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "callBack":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 160
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f040028

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 161
    .local v10, "layout":Landroid/view/View;
    new-instance v4, Landroid/app/Dialog;

    const v13, 0x7f090135

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 162
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 163
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 165
    const v13, 0x7f0d00a4

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 166
    .local v8, "editText":Landroid/widget/EditText;
    const v13, 0x7f0d009d

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 167
    .local v2, "btnCancel":Landroid/widget/TextView;
    const v13, 0x7f0d009e

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 168
    .local v3, "btnCommit":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 171
    .local v5, "dialogWindow":Landroid/view/Window;
    if-nez v5, :cond_45

    .line 172
    const/4 v4, 0x0

    .line 208
    .end local v2    # "btnCancel":Landroid/widget/TextView;
    .end local v3    # "btnCommit":Landroid/widget/TextView;
    .end local v4    # "dialog":Landroid/app/Dialog;
    .end local v5    # "dialogWindow":Landroid/view/Window;
    .end local v8    # "editText":Landroid/widget/EditText;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    :goto_44
    return-object v4

    .line 173
    .restart local v2    # "btnCancel":Landroid/widget/TextView;
    .restart local v3    # "btnCommit":Landroid/widget/TextView;
    .restart local v4    # "dialog":Landroid/app/Dialog;
    .restart local v5    # "dialogWindow":Landroid/view/Window;
    .restart local v8    # "editText":Landroid/widget/EditText;
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "layout":Landroid/view/View;
    :cond_45
    const/16 v13, 0x11

    invoke-virtual {v5, v13}, Landroid/view/Window;->setGravity(I)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 175
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 176
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 178
    .local v11, "p":Landroid/view/WindowManager$LayoutParams;
    iget v13, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v14, v13

    const-wide v16, 0x3fe999999999999aL    # 0.8

    mul-double v14, v14, v16

    double-to-int v13, v14

    iput v13, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 179
    invoke-virtual {v5, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 181
    new-instance v13, Lutils/DialogUtils$5;

    invoke-direct {v13, v4}, Lutils/DialogUtils$5;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    new-instance v13, Lutils/DialogUtils$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v8, v0, v1, v4}, Lutils/DialogUtils$6;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;Landroid/app/Dialog;)V

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_44

    .line 205
    .end local v2    # "btnCancel":Landroid/widget/TextView;
    .end local v3    # "btnCommit":Landroid/widget/TextView;
    .end local v4    # "dialog":Landroid/app/Dialog;
    .end local v5    # "dialogWindow":Landroid/view/Window;
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "editText":Landroid/widget/EditText;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    .end local v11    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :catch_7e
    move-exception v7

    .line 206
    .local v7, "e":Ljava/lang/Exception;
    const-string v13, "gw"

    const-string v14, "OneWheelDialog:activity is not running!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v4, 0x0

    goto :goto_44
.end method

.method public static showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
    .registers 20
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "array"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Lutils/DialogUtils$DialogCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 392
    .local p2, "callBack":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 393
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x7f040029

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 394
    .local v10, "layout":Landroid/view/View;
    new-instance v5, Landroid/app/Dialog;

    const v15, 0x7f090135

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 395
    .local v5, "dialog":Landroid/app/Dialog;
    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 396
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 398
    const-string v15, "0"

    sput-object v15, Lutils/DialogUtils;->witch:Ljava/lang/String;

    .line 399
    new-instance v2, Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 400
    .local v2, "adapterData":Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;
    const v15, 0x7f0d00a5

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/delan/app/germanybluetooth/widget/WheelView;

    .line 401
    .local v14, "wheelView01":Lcom/delan/app/germanybluetooth/widget/WheelView;
    const v15, 0x7f0d00a6

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 402
    .local v3, "btnCancel":Landroid/widget/TextView;
    const v15, 0x7f0d00a7

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 403
    .local v4, "btnCommit":Landroid/widget/TextView;
    invoke-virtual {v14, v2}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setViewAdapter(Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;)V

    .line 404
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCyclic(Z)V

    .line 406
    new-instance v11, Lutils/DialogUtils$13;

    invoke-direct {v11, v14}, Lutils/DialogUtils$13;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    .line 414
    .local v11, "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    invoke-virtual {v14, v11}, Lcom/delan/app/germanybluetooth/widget/WheelView;->addChangingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;)V

    .line 416
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 417
    .local v6, "dialogWindow":Landroid/view/Window;
    if-nez v6, :cond_5f

    .line 418
    const/4 v5, 0x0

    .line 449
    .end local v2    # "adapterData":Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;
    .end local v3    # "btnCancel":Landroid/widget/TextView;
    .end local v4    # "btnCommit":Landroid/widget/TextView;
    .end local v5    # "dialog":Landroid/app/Dialog;
    .end local v6    # "dialogWindow":Landroid/view/Window;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    .end local v11    # "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    .end local v14    # "wheelView01":Lcom/delan/app/germanybluetooth/widget/WheelView;
    :goto_5e
    return-object v5

    .line 419
    .restart local v2    # "adapterData":Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;
    .restart local v3    # "btnCancel":Landroid/widget/TextView;
    .restart local v4    # "btnCommit":Landroid/widget/TextView;
    .restart local v5    # "dialog":Landroid/app/Dialog;
    .restart local v6    # "dialogWindow":Landroid/view/Window;
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "layout":Landroid/view/View;
    .restart local v11    # "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    .restart local v14    # "wheelView01":Lcom/delan/app/germanybluetooth/widget/WheelView;
    :cond_5f
    const/16 v15, 0x50

    invoke-virtual {v6, v15}, Landroid/view/Window;->setGravity(I)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 421
    .local v13, "resources":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 422
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 424
    .local v12, "p":Landroid/view/WindowManager$LayoutParams;
    iget v15, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v15, v15, 0x1

    iput v15, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 425
    invoke-virtual {v6, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 427
    new-instance v15, Lutils/DialogUtils$14;

    move-object/from16 v0, p2

    invoke-direct {v15, v0, v5}, Lutils/DialogUtils$14;-><init>(Lutils/DialogUtils$DialogCallBack;Landroid/app/Dialog;)V

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    new-instance v15, Lutils/DialogUtils$15;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1, v5}, Lutils/DialogUtils$15;-><init>(Lutils/DialogUtils$DialogCallBack;[Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_92} :catch_93

    goto :goto_5e

    .line 446
    .end local v2    # "adapterData":Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;
    .end local v3    # "btnCancel":Landroid/widget/TextView;
    .end local v4    # "btnCommit":Landroid/widget/TextView;
    .end local v5    # "dialog":Landroid/app/Dialog;
    .end local v6    # "dialogWindow":Landroid/view/Window;
    .end local v7    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    .end local v11    # "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    .end local v12    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "resources":Landroid/content/res/Resources;
    .end local v14    # "wheelView01":Lcom/delan/app/germanybluetooth/widget/WheelView;
    :catch_93
    move-exception v8

    .line 447
    .local v8, "e":Ljava/lang/Exception;
    const-string v15, "gw"

    const-string v16, "OneWheelDialog:activity is not running!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v5, 0x0

    goto :goto_5e
.end method

.method public static showTwoWheelDialog(Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;
    .registers 24
    .param p0, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lutils/DialogUtils$DialogCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "callBack":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    .line 460
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v19, 0x7f04002a

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 461
    .local v13, "layout":Landroid/view/View;
    new-instance v8, Landroid/app/Dialog;

    const v19, 0x7f090135

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 462
    .local v8, "dialog":Landroid/app/Dialog;
    invoke-virtual {v8, v13}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 463
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 465
    const-string v19, "00:00"

    sput-object v19, Lutils/DialogUtils;->witch:Ljava/lang/String;

    .line 466
    new-instance v4, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;

    const/16 v19, 0x0

    const/16 v20, 0x17

    const-string v21, "%02d"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 468
    .local v4, "adapterHour":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    new-instance v5, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "%02d"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 470
    .local v5, "adapterMin":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    const v19, 0x7f0d00a8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/delan/app/germanybluetooth/widget/WheelView;

    .line 471
    .local v17, "wheelView1":Lcom/delan/app/germanybluetooth/widget/WheelView;
    const v19, 0x7f0d00a9

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/delan/app/germanybluetooth/widget/WheelView;

    .line 472
    .local v18, "wheelView2":Lcom/delan/app/germanybluetooth/widget/WheelView;
    const v19, 0x7f0d00a6

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 473
    .local v6, "btnCancel":Landroid/widget/TextView;
    const v19, 0x7f0d00a7

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 474
    .local v7, "btnCommit":Landroid/widget/TextView;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setViewAdapter(Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;)V

    .line 475
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCyclic(Z)V

    .line 476
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCurrentItem(I)V

    .line 477
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setViewAdapter(Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;)V

    .line 478
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCyclic(Z)V

    .line 479
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCurrentItem(I)V

    .line 481
    new-instance v14, Lutils/DialogUtils$16;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lutils/DialogUtils$16;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    .line 488
    .local v14, "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/delan/app/germanybluetooth/widget/WheelView;->addChangingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;)V

    .line 489
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/delan/app/germanybluetooth/widget/WheelView;->addChangingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;)V

    .line 491
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 492
    .local v9, "dialogWindow":Landroid/view/Window;
    if-nez v9, :cond_be

    .line 493
    const/4 v8, 0x0

    .line 527
    .end local v4    # "adapterHour":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .end local v5    # "adapterMin":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .end local v6    # "btnCancel":Landroid/widget/TextView;
    .end local v7    # "btnCommit":Landroid/widget/TextView;
    .end local v8    # "dialog":Landroid/app/Dialog;
    .end local v9    # "dialogWindow":Landroid/view/Window;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v13    # "layout":Landroid/view/View;
    .end local v14    # "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    .end local v17    # "wheelView1":Lcom/delan/app/germanybluetooth/widget/WheelView;
    .end local v18    # "wheelView2":Lcom/delan/app/germanybluetooth/widget/WheelView;
    :goto_bd
    return-object v8

    .line 494
    .restart local v4    # "adapterHour":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .restart local v5    # "adapterMin":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .restart local v6    # "btnCancel":Landroid/widget/TextView;
    .restart local v7    # "btnCommit":Landroid/widget/TextView;
    .restart local v8    # "dialog":Landroid/app/Dialog;
    .restart local v9    # "dialogWindow":Landroid/view/Window;
    .restart local v12    # "inflater":Landroid/view/LayoutInflater;
    .restart local v13    # "layout":Landroid/view/View;
    .restart local v14    # "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    .restart local v17    # "wheelView1":Lcom/delan/app/germanybluetooth/widget/WheelView;
    .restart local v18    # "wheelView2":Lcom/delan/app/germanybluetooth/widget/WheelView;
    :cond_be
    const/16 v19, 0x50

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/Window;->setGravity(I)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 496
    .local v16, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 497
    .local v10, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 499
    .local v15, "p":Landroid/view/WindowManager$LayoutParams;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 500
    invoke-virtual {v9, v15}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 502
    new-instance v19, Lutils/DialogUtils$17;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lutils/DialogUtils$17;-><init>(Lutils/DialogUtils$DialogCallBack;Landroid/app/Dialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    new-instance v19, Lutils/DialogUtils$18;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v8, v2}, Lutils/DialogUtils$18;-><init>(Landroid/app/Activity;Landroid/app/Dialog;Lutils/DialogUtils$DialogCallBack;)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fd} :catch_fe

    goto :goto_bd

    .line 524
    .end local v4    # "adapterHour":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .end local v5    # "adapterMin":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .end local v6    # "btnCancel":Landroid/widget/TextView;
    .end local v7    # "btnCommit":Landroid/widget/TextView;
    .end local v8    # "dialog":Landroid/app/Dialog;
    .end local v9    # "dialogWindow":Landroid/view/Window;
    .end local v10    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v13    # "layout":Landroid/view/View;
    .end local v14    # "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    .end local v15    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "resources":Landroid/content/res/Resources;
    .end local v17    # "wheelView1":Lcom/delan/app/germanybluetooth/widget/WheelView;
    .end local v18    # "wheelView2":Lcom/delan/app/germanybluetooth/widget/WheelView;
    :catch_fe
    move-exception v11

    .line 525
    .local v11, "e":Ljava/lang/Exception;
    const-string v19, "gw"

    const-string v20, "OneWheelDialog:activity is not running!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v8, 0x0

    goto :goto_bd
.end method

.method public static showTwoWheelTimeDialog(Landroid/app/Activity;Lutils/DialogUtils$DialogCallBack;)V
    .registers 24
    .param p0, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lutils/DialogUtils$DialogCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, "callBack":Lutils/DialogUtils$DialogCallBack;, "Lutils/DialogUtils$DialogCallBack<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    .line 538
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v19, 0x7f04002a

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 539
    .local v13, "layout":Landroid/view/View;
    new-instance v8, Landroid/app/Dialog;

    const v19, 0x7f090135

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 540
    .local v8, "dialog":Landroid/app/Dialog;
    invoke-virtual {v8, v13}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 541
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 543
    const-string v19, "0"

    sput-object v19, Lutils/DialogUtils;->witch:Ljava/lang/String;

    .line 544
    new-instance v4, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;

    const/16 v19, 0x0

    const/16 v20, 0x18

    const-string v21, "%02d"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 546
    .local v4, "adapterHour":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    new-instance v5, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;

    const/16 v19, 0x0

    const/16 v20, 0x32

    const-string v21, "%02d"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 548
    .local v5, "adapterMin":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    const v19, 0x7f0d00a8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/delan/app/germanybluetooth/widget/WheelView;

    .line 549
    .local v17, "wheelView1":Lcom/delan/app/germanybluetooth/widget/WheelView;
    const v19, 0x7f0d00a9

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/delan/app/germanybluetooth/widget/WheelView;

    .line 550
    .local v18, "wheelView2":Lcom/delan/app/germanybluetooth/widget/WheelView;
    const v19, 0x7f0d00a6

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 551
    .local v6, "btnCancel":Landroid/widget/TextView;
    const v19, 0x7f0d00a7

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 552
    .local v7, "btnCommit":Landroid/widget/TextView;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setViewAdapter(Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;)V

    .line 553
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCyclic(Z)V

    .line 554
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCurrentItem(I)V

    .line 555
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setViewAdapter(Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;)V

    .line 556
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCyclic(Z)V

    .line 557
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCurrentItem(I)V

    .line 559
    new-instance v14, Lutils/DialogUtils$19;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lutils/DialogUtils$19;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    .line 578
    .local v14, "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/delan/app/germanybluetooth/widget/WheelView;->addChangingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;)V

    .line 579
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/delan/app/germanybluetooth/widget/WheelView;->addChangingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;)V

    .line 581
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 582
    .local v9, "dialogWindow":Landroid/view/Window;
    if-nez v9, :cond_bd

    .line 616
    .end local v4    # "adapterHour":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .end local v5    # "adapterMin":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .end local v6    # "btnCancel":Landroid/widget/TextView;
    .end local v7    # "btnCommit":Landroid/widget/TextView;
    .end local v8    # "dialog":Landroid/app/Dialog;
    .end local v9    # "dialogWindow":Landroid/view/Window;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v13    # "layout":Landroid/view/View;
    .end local v14    # "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    .end local v17    # "wheelView1":Lcom/delan/app/germanybluetooth/widget/WheelView;
    .end local v18    # "wheelView2":Lcom/delan/app/germanybluetooth/widget/WheelView;
    :goto_bc
    return-void

    .line 584
    .restart local v4    # "adapterHour":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .restart local v5    # "adapterMin":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .restart local v6    # "btnCancel":Landroid/widget/TextView;
    .restart local v7    # "btnCommit":Landroid/widget/TextView;
    .restart local v8    # "dialog":Landroid/app/Dialog;
    .restart local v9    # "dialogWindow":Landroid/view/Window;
    .restart local v12    # "inflater":Landroid/view/LayoutInflater;
    .restart local v13    # "layout":Landroid/view/View;
    .restart local v14    # "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    .restart local v17    # "wheelView1":Lcom/delan/app/germanybluetooth/widget/WheelView;
    .restart local v18    # "wheelView2":Lcom/delan/app/germanybluetooth/widget/WheelView;
    :cond_bd
    const/16 v19, 0x50

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/Window;->setGravity(I)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 586
    .local v16, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 587
    .local v10, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 589
    .local v15, "p":Landroid/view/WindowManager$LayoutParams;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 590
    invoke-virtual {v9, v15}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 592
    new-instance v19, Lutils/DialogUtils$20;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lutils/DialogUtils$20;-><init>(Lutils/DialogUtils$DialogCallBack;Landroid/app/Dialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    new-instance v19, Lutils/DialogUtils$21;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v8, v2}, Lutils/DialogUtils$21;-><init>(Landroid/app/Activity;Landroid/app/Dialog;Lutils/DialogUtils$DialogCallBack;)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fc} :catch_fd

    goto :goto_bc

    .line 613
    .end local v4    # "adapterHour":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .end local v5    # "adapterMin":Lcom/delan/app/germanybluetooth/widget/NumericWheelAdapter;
    .end local v6    # "btnCancel":Landroid/widget/TextView;
    .end local v7    # "btnCommit":Landroid/widget/TextView;
    .end local v8    # "dialog":Landroid/app/Dialog;
    .end local v9    # "dialogWindow":Landroid/view/Window;
    .end local v10    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v13    # "layout":Landroid/view/View;
    .end local v14    # "onDataChanged":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    .end local v15    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "resources":Landroid/content/res/Resources;
    .end local v17    # "wheelView1":Lcom/delan/app/germanybluetooth/widget/WheelView;
    .end local v18    # "wheelView2":Lcom/delan/app/germanybluetooth/widget/WheelView;
    :catch_fd
    move-exception v11

    .line 614
    .local v11, "e":Ljava/lang/Exception;
    const-string v19, "gw"

    const-string v20, "OneWheelDialog:activity is not running!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc
.end method
