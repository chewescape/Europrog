.class public Lcom/idelan/java/Util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field public static final APP_INSTALL_AUTO:I = 0x0

.field public static final APP_INSTALL_EXTERNAL:I = 0x2

.field public static final APP_INSTALL_INTERNAL:I = 0x1

.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final DELETE_FAILED_INVALID_PACKAGE:I = -0x3

.field public static final DELETE_FAILED_PERMISSION_DENIED:I = -0x4

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_OTHER:I = -0xf4240

.field public static final INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16

.field public static final INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "PackageUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    if-eqz p0, :cond_1a

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 532
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1a

    .line 535
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 536
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1a

    .line 537
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_15} :catch_16

    .line 544
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_15
    return v3

    .line 539
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_16
    move-exception v0

    .line 540
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 544
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1a
    const/4 v3, -0x1

    goto :goto_15
.end method

.method public static getInstallLocation()I
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 557
    const-string v5, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm get-install-location"

    .line 556
    invoke-static {v5, v4, v3}, Lcom/idelan/java/Util/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;

    move-result-object v0

    .line 559
    .local v0, "commandResult":Lcom/idelan/java/Util/ShellUtils$CommandResult;
    iget v5, v0, Lcom/idelan/java/Util/ShellUtils$CommandResult;->result:I

    if-nez v5, :cond_27

    iget-object v5, v0, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v5, :cond_27

    .line 560
    iget-object v5, v0, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_27

    .line 562
    :try_start_18
    iget-object v5, v0, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 563
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 562
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_23} :catch_2b

    move-result v2

    .line 564
    .local v2, "location":I
    packed-switch v2, :pswitch_data_38

    .end local v2    # "location":I
    :cond_27
    :goto_27
    move v3, v4

    .line 575
    :goto_28
    :pswitch_28
    return v3

    .line 568
    .restart local v2    # "location":I
    :pswitch_29
    const/4 v3, 0x2

    goto :goto_28

    .line 570
    .end local v2    # "location":I
    :catch_2b
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 572
    const-string v3, "PackageUtils"

    const-string v5, "pm get-install-location error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 564
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method

.method private static getInstallLocationParams()Ljava/lang/String;
    .registers 2

    .prologue
    .line 584
    invoke-static {}, Lcom/idelan/java/Util/PackageUtils;->getInstallLocation()I

    move-result v0

    .line 585
    .local v0, "location":I
    packed-switch v0, :pswitch_data_10

    .line 591
    const-string v1, ""

    :goto_9
    return-object v1

    .line 587
    :pswitch_a
    const-string v1, "-f"

    goto :goto_9

    .line 589
    :pswitch_d
    const-string v1, "-s"

    goto :goto_9

    .line 585
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method public static final install(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/idelan/java/Util/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 77
    invoke-static {}, Lcom/idelan/java/Util/ShellUtils;->checkRootPermission()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 78
    :cond_c
    invoke-static {p0, p1}, Lcom/idelan/java/Util/PackageUtils;->installSilent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 80
    :goto_10
    return v0

    :cond_11
    invoke-static {p0, p1}, Lcom/idelan/java/Util/PackageUtils;->installNormal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_10

    .line 81
    :cond_19
    const/4 v0, -0x3

    goto :goto_10
.end method

.method public static installNormal(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_26

    .line 97
    :cond_24
    const/4 v2, 0x0

    .line 104
    :goto_25
    return v2

    .line 100
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 101
    const-string v3, "application/vnd.android.package-archive"

    .line 100
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    const/4 v2, 0x1

    goto :goto_25
.end method

.method public static installSilent(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -r "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/idelan/java/Util/PackageUtils;->getInstallLocationParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/PackageUtils;->installSilent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static installSilent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "pmParams"    # Ljava/lang/String;

    .prologue
    const v5, -0xf4240

    const/4 v4, 0x1

    const/4 v6, -0x3

    .line 152
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v4, v6

    .line 310
    .end local p2    # "pmParams":Ljava/lang/String;
    :cond_e
    :goto_e
    return v4

    .line 156
    .restart local p2    # "pmParams":Ljava/lang/String;
    :cond_f
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_2c

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_2e

    :cond_2c
    move v4, v6

    .line 159
    goto :goto_e

    .line 167
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const-string v7, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm install "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 169
    if-nez p2, :cond_3d

    const-string p2, ""

    .end local p2    # "pmParams":Ljava/lang/String;
    :cond_3d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 170
    const-string v7, " "

    const-string v8, "\\ "

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    .local v0, "command":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/idelan/java/Util/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a7

    const/4 v3, 0x0

    .line 171
    :goto_5e
    invoke-static {v7, v3, v4}, Lcom/idelan/java/Util/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;

    move-result-object v1

    .line 173
    .local v1, "commandResult":Lcom/idelan/java/Util/ShellUtils$CommandResult;
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v3, :cond_7a

    .line 174
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    const-string v7, "Success"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 175
    const-string v7, "success"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 179
    :cond_7a
    const-string v3, "PackageUtils"

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installSilent successMsg:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    iget-object v7, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", ErrorMsg:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 182
    iget-object v7, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    if-nez v3, :cond_a9

    move v4, v5

    .line 184
    goto/16 :goto_e

    .end local v1    # "commandResult":Lcom/idelan/java/Util/ShellUtils$CommandResult;
    :cond_a7
    move v3, v4

    .line 172
    goto :goto_5e

    .line 186
    .restart local v1    # "commandResult":Lcom/idelan/java/Util/ShellUtils$CommandResult;
    :cond_a9
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_ALREADY_EXISTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 187
    const/4 v4, -0x1

    goto/16 :goto_e

    .line 189
    :cond_b6
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INVALID_APK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 190
    const/4 v4, -0x2

    goto/16 :goto_e

    .line 192
    :cond_c3
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INVALID_URI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d0

    move v4, v6

    .line 193
    goto/16 :goto_e

    .line 195
    :cond_d0
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 196
    const-string v4, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 197
    const/4 v4, -0x4

    goto/16 :goto_e

    .line 199
    :cond_dd
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 200
    const/4 v4, -0x5

    goto/16 :goto_e

    .line 202
    :cond_ea
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_NO_SHARED_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 203
    const/4 v4, -0x6

    goto/16 :goto_e

    .line 205
    :cond_f7
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 206
    const-string v4, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 207
    const/4 v4, -0x7

    goto/16 :goto_e

    .line 209
    :cond_104
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 210
    const-string v4, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 211
    const/4 v4, -0x8

    goto/16 :goto_e

    .line 213
    :cond_111
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 214
    const-string v4, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 215
    const/16 v4, -0x9

    goto/16 :goto_e

    .line 217
    :cond_11f
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 218
    const-string v4, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12d

    .line 219
    const/16 v4, -0xa

    goto/16 :goto_e

    .line 221
    :cond_12d
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_DEXOPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 222
    const/16 v4, -0xb

    goto/16 :goto_e

    .line 224
    :cond_13b
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_OLDER_SDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_149

    .line 225
    const/16 v4, -0xc

    goto/16 :goto_e

    .line 227
    :cond_149
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 228
    const-string v4, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_157

    .line 229
    const/16 v4, -0xd

    goto/16 :goto_e

    .line 231
    :cond_157
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_NEWER_SDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_165

    .line 232
    const/16 v4, -0xe

    goto/16 :goto_e

    .line 234
    :cond_165
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_TEST_ONLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_173

    .line 235
    const/16 v4, -0xf

    goto/16 :goto_e

    .line 237
    :cond_173
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 238
    const-string v4, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_181

    .line 239
    const/16 v4, -0x10

    goto/16 :goto_e

    .line 241
    :cond_181
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_MISSING_FEATURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18f

    .line 242
    const/16 v4, -0x11

    goto/16 :goto_e

    .line 244
    :cond_18f
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_CONTAINER_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 245
    const/16 v4, -0x12

    goto/16 :goto_e

    .line 247
    :cond_19d
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 248
    const-string v4, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ab

    .line 249
    const/16 v4, -0x13

    goto/16 :goto_e

    .line 251
    :cond_1ab
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b9

    .line 252
    const/16 v4, -0x14

    goto/16 :goto_e

    .line 254
    :cond_1b9
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 255
    const-string v4, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c7

    .line 256
    const/16 v4, -0x15

    goto/16 :goto_e

    .line 258
    :cond_1c7
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 259
    const-string v4, "INSTALL_FAILED_VERIFICATION_FAILURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d5

    .line 260
    const/16 v4, -0x16

    goto/16 :goto_e

    .line 262
    :cond_1d5
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e3

    .line 263
    const/16 v4, -0x17

    goto/16 :goto_e

    .line 265
    :cond_1e3
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_UID_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f1

    .line 266
    const/16 v4, -0x18

    goto/16 :goto_e

    .line 268
    :cond_1f1
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_NOT_APK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ff

    .line 269
    const/16 v4, -0x64

    goto/16 :goto_e

    .line 271
    :cond_1ff
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 272
    const-string v4, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20d

    .line 273
    const/16 v4, -0x65

    goto/16 :goto_e

    .line 275
    :cond_20d
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 276
    const-string v4, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21b

    .line 277
    const/16 v4, -0x66

    goto/16 :goto_e

    .line 279
    :cond_21b
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 280
    const-string v4, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_229

    .line 281
    const/16 v4, -0x67

    goto/16 :goto_e

    .line 283
    :cond_229
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 284
    const-string v4, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_237

    .line 285
    const/16 v4, -0x68

    goto/16 :goto_e

    .line 287
    :cond_237
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 288
    const-string v4, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_245

    .line 289
    const/16 v4, -0x69

    goto/16 :goto_e

    .line 291
    :cond_245
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 292
    const-string v4, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_253

    .line 293
    const/16 v4, -0x6a

    goto/16 :goto_e

    .line 295
    :cond_253
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 296
    const-string v4, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_261

    .line 297
    const/16 v4, -0x6b

    goto/16 :goto_e

    .line 299
    :cond_261
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 300
    const-string v4, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26f

    .line 301
    const/16 v4, -0x6c

    goto/16 :goto_e

    .line 303
    :cond_26f
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 304
    const-string v4, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27d

    .line 305
    const/16 v4, -0x6d

    goto/16 :goto_e

    .line 307
    :cond_27d
    iget-object v3, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INTERNAL_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28b

    .line 308
    const/16 v4, -0x6e

    goto/16 :goto_e

    :cond_28b
    move v4, v5

    .line 310
    goto/16 :goto_e
.end method

.method public static isSystemApplication(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    if-nez p0, :cond_4

    .line 437
    const/4 v0, 0x0

    .line 440
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/idelan/java/Util/PackageUtils;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 452
    if-nez p0, :cond_4

    .line 453
    const/4 v0, 0x0

    .line 456
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/idelan/java/Util/PackageUtils;->isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 6
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 474
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    .line 486
    :cond_b
    :goto_b
    return v2

    .line 481
    :cond_c
    const/4 v3, 0x0

    .line 480
    :try_start_d
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 482
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_b

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_15} :catch_1b

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_b

    const/4 v2, 0x1

    goto :goto_b

    .line 483
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1b
    move-exception v1

    .line 484
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_b
.end method

.method public static isTopActivity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 504
    if-eqz p0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 519
    :cond_a
    :goto_a
    return-object v3

    .line 509
    :cond_b
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 508
    check-cast v0, Landroid/app/ActivityManager;

    .line 510
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 511
    .local v2, "tasksInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-static {v2}, Lcom/idelan/java/Util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 515
    const/4 v3, 0x0

    :try_start_1f
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 516
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_34

    move-result-object v3

    goto :goto_a

    .line 517
    :catch_34
    move-exception v1

    .line 518
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 519
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_a
.end method

.method public static startInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 603
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 604
    .local v1, "sdkVersion":I
    const/16 v2, 0x9

    if-lt v1, v2, :cond_23

    .line 605
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 614
    :goto_1a
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 615
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 616
    return-void

    .line 608
    :cond_23
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const-string v2, "com.android.settings"

    .line 610
    const-string v3, "com.android.settings.InstalledAppDetails"

    .line 609
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const/16 v2, 0x8

    if-ne v1, v2, :cond_39

    const-string v2, "pkg"

    :goto_35
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1a

    .line 612
    :cond_39
    const-string v2, "com.android.settings.ApplicationPkgName"

    goto :goto_35
.end method

.method public static final uninstall(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-static {p0}, Lcom/idelan/java/Util/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 329
    invoke-static {}, Lcom/idelan/java/Util/ShellUtils;->checkRootPermission()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 330
    :cond_c
    invoke-static {p0, p1}, Lcom/idelan/java/Util/PackageUtils;->uninstallSilent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 332
    :goto_10
    return v0

    :cond_11
    invoke-static {p0, p1}, Lcom/idelan/java/Util/PackageUtils;->uninstallNormal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_10

    .line 333
    :cond_19
    const/4 v0, -0x3

    goto :goto_10
.end method

.method public static uninstallNormal(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 345
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 346
    :cond_8
    const/4 v1, 0x0

    .line 354
    :goto_9
    return v1

    .line 349
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 351
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 349
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 354
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public static uninstallSilent(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/PackageUtils;->uninstallSilent(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static uninstallSilent(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isKeepData"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 396
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    .line 397
    :cond_a
    const/4 v3, -0x3

    .line 426
    :cond_b
    :goto_b
    return v3

    .line 405
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    const-string v5, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm uninstall"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 407
    if-eqz p2, :cond_7e

    const-string v2, " -k "

    :goto_1b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 408
    const-string v5, " "

    const-string v6, "\\ "

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    .local v0, "command":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/idelan/java/Util/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_81

    const/4 v2, 0x0

    .line 409
    :goto_36
    invoke-static {v5, v2, v3}, Lcom/idelan/java/Util/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;

    move-result-object v1

    .line 411
    .local v1, "commandResult":Lcom/idelan/java/Util/ShellUtils$CommandResult;
    iget-object v2, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v2, :cond_52

    .line 412
    iget-object v2, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    const-string v5, "Success"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 413
    const-string v5, "success"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 416
    :cond_52
    const-string v2, "PackageUtils"

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallSilent successMsg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 418
    iget-object v5, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", ErrorMsg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 419
    iget-object v5, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    if-nez v2, :cond_83

    move v3, v4

    .line 421
    goto :goto_b

    .line 407
    .end local v0    # "command":Ljava/lang/StringBuilder;
    .end local v1    # "commandResult":Lcom/idelan/java/Util/ShellUtils$CommandResult;
    :cond_7e
    const-string v2, " "

    goto :goto_1b

    .restart local v0    # "command":Ljava/lang/StringBuilder;
    :cond_81
    move v2, v3

    .line 410
    goto :goto_36

    .line 423
    .restart local v1    # "commandResult":Lcom/idelan/java/Util/ShellUtils$CommandResult;
    :cond_83
    iget-object v2, v1, Lcom/idelan/java/Util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v3, "Permission denied"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 424
    const/4 v3, -0x4

    goto/16 :goto_b

    :cond_90
    move v3, v4

    .line 426
    goto/16 :goto_b
.end method
