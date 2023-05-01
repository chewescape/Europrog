.class public Lcom/zhy/m/permission/MPermissions;
.super Ljava/lang/Object;
.source "MPermissions.java"


# static fields
.field private static final SUFFIX:Ljava/lang/String; = "$$PermissionProxy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs _requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V
    .registers 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/zhy/m/permission/Utils;->isOverMarshmallow()Z

    move-result v1

    if-nez v1, :cond_a

    .line 51
    invoke-static {p0, p1}, Lcom/zhy/m/permission/MPermissions;->doExecuteSuccess(Ljava/lang/Object;I)V

    .line 72
    .end local p0    # "object":Ljava/lang/Object;
    :goto_9
    return-void

    .line 54
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_a
    invoke-static {p0}, Lcom/zhy/m/permission/Utils;->getActivity(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/zhy/m/permission/Utils;->findDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_65

    .line 58
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2e

    .line 60
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_9

    .line 61
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2e
    instance-of v1, p0, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_44

    .line 63
    check-cast p0, Landroid/support/v4/app/Fragment;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_9

    .line 66
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_65
    invoke-static {p0, p1}, Lcom/zhy/m/permission/MPermissions;->doExecuteSuccess(Ljava/lang/Object;I)V

    goto :goto_9
.end method

.method private static doExecuteFail(Ljava/lang/Object;I)V
    .registers 3
    .param p0, "activity"    # Ljava/lang/Object;
    .param p1, "requestCode"    # I

    .prologue
    .line 104
    invoke-static {p0}, Lcom/zhy/m/permission/MPermissions;->findPermissionProxy(Ljava/lang/Object;)Lcom/zhy/m/permission/PermissionProxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zhy/m/permission/PermissionProxy;->denied(Ljava/lang/Object;I)V

    .line 105
    return-void
.end method

.method private static doExecuteSuccess(Ljava/lang/Object;I)V
    .registers 3
    .param p0, "activity"    # Ljava/lang/Object;
    .param p1, "requestCode"    # I

    .prologue
    .line 98
    invoke-static {p0}, Lcom/zhy/m/permission/MPermissions;->findPermissionProxy(Ljava/lang/Object;)Lcom/zhy/m/permission/PermissionProxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zhy/m/permission/PermissionProxy;->grant(Ljava/lang/Object;I)V

    .line 100
    return-void
.end method

.method private static findPermissionProxy(Ljava/lang/Object;)Lcom/zhy/m/permission/PermissionProxy;
    .registers 10
    .param p0, "activity"    # Ljava/lang/Object;

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 80
    .local v0, "clazz":Ljava/lang/Class;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$$PermissionProxy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 81
    .local v2, "injectorClazz":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhy/m/permission/PermissionProxy;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_25} :catch_26
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_25} :catch_57
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_25} :catch_5c

    return-object v3

    .line 82
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "injectorClazz":Ljava/lang/Class;
    :catch_26
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 92
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_2a
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "can not find %s , something when compiler."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$$PermissionProxy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :catch_57
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2a

    .line 88
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_5c
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a
.end method

.method public static onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 110
    invoke-static {p0, p1, p2, p3}, Lcom/zhy/m/permission/MPermissions;->requestResult(Ljava/lang/Object;I[Ljava/lang/String;[I)V

    .line 111
    return-void
.end method

.method public static onRequestPermissionsResult(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;[I)V
    .registers 4
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 116
    invoke-static {p0, p1, p2, p3}, Lcom/zhy/m/permission/MPermissions;->requestResult(Ljava/lang/Object;I[Ljava/lang/String;[I)V

    .line 117
    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V
    .registers 3
    .param p0, "object"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0, p1, p2}, Lcom/zhy/m/permission/MPermissions;->_requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static varargs requestPermissions(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;)V
    .registers 3
    .param p0, "object"    # Landroid/support/v4/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/zhy/m/permission/MPermissions;->_requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private static requestResult(Ljava/lang/Object;I[Ljava/lang/String;[I)V
    .registers 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p3

    if-ge v1, v2, :cond_15

    .line 125
    aget v2, p3, v1

    if-eqz v2, :cond_12

    .line 127
    aget-object v2, p2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 130
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1f

    .line 132
    invoke-static {p0, p1}, Lcom/zhy/m/permission/MPermissions;->doExecuteFail(Ljava/lang/Object;I)V

    .line 137
    :goto_1e
    return-void

    .line 135
    :cond_1f
    invoke-static {p0, p1}, Lcom/zhy/m/permission/MPermissions;->doExecuteSuccess(Ljava/lang/Object;I)V

    goto :goto_1e
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;I)Z
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-static {p0}, Lcom/zhy/m/permission/MPermissions;->findPermissionProxy(Ljava/lang/Object;)Lcom/zhy/m/permission/PermissionProxy;

    move-result-object v0

    .line 36
    .local v0, "proxy":Lcom/zhy/m/permission/PermissionProxy;
    invoke-interface {v0, p2}, Lcom/zhy/m/permission/PermissionProxy;->needShowRationale(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 43
    :cond_b
    :goto_b
    return v1

    .line 37
    :cond_c
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 40
    invoke-interface {v0, p0, p2}, Lcom/zhy/m/permission/PermissionProxy;->rationale(Ljava/lang/Object;I)V

    .line 41
    const/4 v1, 0x1

    goto :goto_b
.end method
