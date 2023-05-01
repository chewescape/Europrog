.class public final Lcom/zhy/m/permission/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAnnotationMethods(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "clazz1":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v4, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v2, :cond_1b

    aget-object v3, v0, v1

    .line 38
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 39
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 42
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1b
    return-object v4
.end method

.method public static varargs findDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v1, "denyPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_18

    aget-object v4, v0, v2

    .line 28
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_15

    .line 29
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 32
    .end local v4    # "value":Ljava/lang/String;
    :cond_18
    return-object v1
.end method

.method public static getActivity(Ljava/lang/Object;)Landroid/app/Activity;
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 48
    instance-of v0, p0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_b

    .line 49
    check-cast p0, Landroid/support/v4/app/Fragment;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    .line 53
    :goto_a
    return-object p0

    .line 50
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_b
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_12

    .line 51
    check-cast p0, Landroid/app/Activity;

    goto :goto_a

    .line 53
    :cond_12
    const/4 p0, 0x0

    goto :goto_a
.end method

.method public static isOverMarshmallow()Z
    .registers 2

    .prologue
    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
