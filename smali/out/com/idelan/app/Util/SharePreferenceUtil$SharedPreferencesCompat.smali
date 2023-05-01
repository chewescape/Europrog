.class Lcom/idelan/app/Util/SharePreferenceUtil$SharedPreferencesCompat;
.super Ljava/lang/Object;
.source "SharePreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/Util/SharePreferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedPreferencesCompat"
.end annotation


# static fields
.field private static final sApplyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 138
    invoke-static {}, Lcom/idelan/app/Util/SharePreferenceUtil$SharedPreferencesCompat;->findApplyMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/idelan/app/Util/SharePreferenceUtil$SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 3
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 163
    :try_start_0
    sget-object v0, Lcom/idelan/app/Util/SharePreferenceUtil$SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    .line 164
    sget-object v0, Lcom/idelan/app/Util/SharePreferenceUtil$SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_d

    .line 172
    :goto_c
    return-void

    .line 169
    :catch_d
    move-exception v0

    .line 171
    :cond_e
    :goto_e
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c

    .line 168
    :catch_12
    move-exception v0

    goto :goto_e

    .line 167
    :catch_14
    move-exception v0

    goto :goto_e
.end method

.method private static findApplyMethod()Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 148
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 149
    .local v0, "clz":Ljava/lang/Class;
    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v1

    .line 153
    :goto_b
    return-object v1

    .line 150
    :catch_c
    move-exception v1

    .line 153
    const/4 v1, 0x0

    goto :goto_b
.end method
