.class public Lcom/idelan/app/Util/SharePreferenceUtil;
.super Ljava/lang/Object;
.source "SharePreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/app/Util/SharePreferenceUtil$SharedPreferencesCompat;
    }
.end annotation


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "share_data"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-string v2, "share_data"

    .line 100
    const/4 v3, 0x0

    .line 99
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-static {v0}, Lcom/idelan/app/Util/SharePreferenceUtil$SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 104
    return-void
.end method

.method public static contains(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v1, "share_data"

    .line 115
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultObject"    # Ljava/lang/Object;

    .prologue
    .line 61
    const-string v1, "share_data"

    .line 62
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, "sp":Landroid/content/SharedPreferences;
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 65
    check-cast p2, Ljava/lang/String;

    .end local p2    # "defaultObject":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    :goto_11
    return-object v1

    .line 66
    .restart local p2    # "defaultObject":Ljava/lang/Object;
    :cond_12
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_25

    .line 67
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultObject":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_11

    .line 68
    .restart local p2    # "defaultObject":Ljava/lang/Object;
    :cond_25
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_38

    .line 69
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defaultObject":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_11

    .line 70
    .restart local p2    # "defaultObject":Ljava/lang/Object;
    :cond_38
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_4b

    .line 71
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "defaultObject":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_11

    .line 72
    .restart local p2    # "defaultObject":Ljava/lang/Object;
    :cond_4b
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_5e

    .line 73
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "defaultObject":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_11

    .line 76
    .restart local p2    # "defaultObject":Ljava/lang/Object;
    :cond_5e
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static getAll(Landroid/content/Context;)Ljava/util/Map;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 126
    const-string v1, "share_data"

    .line 127
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 31
    const-string v2, "share_data"

    .line 32
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 36
    check-cast p2, Ljava/lang/String;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    :goto_14
    invoke-static {v0}, Lcom/idelan/app/Util/SharePreferenceUtil$SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 50
    return-void

    .line 37
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_18
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_26

    .line 38
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    .line 39
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_26
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_34

    .line 40
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    .line 41
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_34
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_42

    .line 42
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    .line 43
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_42
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_50

    .line 44
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    .line 46
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_50
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_14
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v2, "share_data"

    .line 87
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 88
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-static {v0}, Lcom/idelan/app/Util/SharePreferenceUtil$SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 91
    return-void
.end method
