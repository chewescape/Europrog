.class public Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;
.super Lcom/delan/app/germanybluetooth/base/BaseActivity;
.source "MoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private sp:Landroid/content/SharedPreferences;

.field private switchTB:Landroid/widget/ToggleButton;

.field private updateRL:Landroid/widget/RelativeLayout;

.field private versionTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public doClickLeftAction()V
    .registers 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->doClickLeftAction()V

    .line 59
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->finish()V

    .line 60
    return-void
.end method

.method protected fillView()V
    .registers 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->fillView()V

    .line 41
    const v0, 0x7f060080

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 42
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->setActionBarLeft(I)V

    .line 43
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->updateRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->versionTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f06009b

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->switchTB:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .registers 6

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 85
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 86
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    .line 90
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_f
    return-object v3

    .line 87
    :catch_10
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const v3, 0x7f060035

    invoke-virtual {p0, v3}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_f
.end method

.method protected initView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->initView()V

    .line 28
    const v1, 0x7f04001d

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->setView(I)V

    .line 29
    const v1, 0x7f0d0084

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->versionTV:Landroid/widget/TextView;

    .line 30
    const v1, 0x7f0d0082

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->switchTB:Landroid/widget/ToggleButton;

    .line 31
    const v1, 0x7f0d0083

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->updateRL:Landroid/widget/RelativeLayout;

    .line 33
    const-string v1, "config"

    invoke-virtual {p0, v1, v3}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->sp:Landroid/content/SharedPreferences;

    .line 34
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "isOpen"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 35
    .local v0, "isOpen":Z
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->switchTB:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 36
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->onClick(Landroid/view/View;)V

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 74
    :goto_a
    return-void

    .line 70
    :pswitch_b
    const-class v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-virtual {p0, p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a

    .line 68
    nop

    :pswitch_data_12
    .packed-switch 0x7f0d0083
        :pswitch_b
    .end packed-switch
.end method
