.class public Lcom/apkfuns/logutils/utils/ObjectUtil;
.super Ljava/lang/Object;
.source "ObjectUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClassFields(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V
    .registers 16
    .param p0, "cla"    # Ljava/lang/Class;
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "isSubClass"    # Z
    .param p4, "childOffset"    # I

    .prologue
    .line 91
    const-class v7, Ljava/lang/Object;

    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 139
    :goto_8
    return-void

    .line 94
    :cond_9
    if-eqz p3, :cond_29

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/apkfuns/logutils/Constant;->BR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/apkfuns/logutils/Constant;->BR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_29
    const-string v0, ""

    .line 99
    .local v0, "breakLine":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 101
    .local v3, "fields":[Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4a
    array-length v7, v3

    if-ge v5, v7, :cond_22c

    .line 102
    aget-object v2, v3, v5

    .line 103
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 104
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-static {p0}, Lcom/apkfuns/logutils/utils/ObjectUtil;->isStaticInnerClass(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_64

    if-nez v5, :cond_64

    .line 101
    :cond_61
    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 107
    :cond_64
    const/4 v6, 0x0

    .line 109
    .local v6, "subObject":Ljava/lang/Object;
    :try_start_65
    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_65 .. :try_end_68} :catch_fe
    .catchall {:try_start_65 .. :try_end_68} :catchall_196

    move-result-object v6

    .line 113
    if-eqz v6, :cond_af

    .line 116
    invoke-static {p0}, Lcom/apkfuns/logutils/utils/ObjectUtil;->isStaticInnerClass(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_89

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "$change"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "this$0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_61

    .line 119
    :cond_89
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_db

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    .end local v6    # "subObject":Ljava/lang/Object;
    :cond_a6
    :goto_a6
    const/4 v7, 0x2

    if-ge p4, v7, :cond_af

    .line 125
    add-int/lit8 v7, p4, 0x1

    invoke-static {v6, v7}, Lcom/apkfuns/logutils/utils/ObjectUtil;->objectToString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    .line 128
    :cond_af
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%s = %s, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "formatString":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v9, 0x1

    if-nez v6, :cond_f9

    const-string v7, "null"

    .line 131
    :goto_d1
    aput-object v7, v8, v9

    .line 130
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 121
    .end local v4    # "formatString":Ljava/lang/String;
    .restart local v6    # "subObject":Ljava/lang/Object;
    :cond_db
    instance-of v7, v6, Ljava/lang/Character;

    if-eqz v7, :cond_a6

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "subObject":Ljava/lang/String;
    goto :goto_a6

    .line 131
    .end local v6    # "subObject":Ljava/lang/String;
    .restart local v4    # "formatString":Ljava/lang/String;
    :cond_f9
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_d1

    .line 110
    .end local v4    # "formatString":Ljava/lang/String;
    .local v6, "subObject":Ljava/lang/Object;
    :catch_fe
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v6, v1

    .line 113
    .local v6, "subObject":Ljava/lang/IllegalAccessException;
    if-eqz v6, :cond_146

    .line 116
    invoke-static {p0}, Lcom/apkfuns/logutils/utils/ObjectUtil;->isStaticInnerClass(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_120

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "$change"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "this$0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_61

    .line 119
    :cond_120
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_173

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    .end local v6    # "subObject":Ljava/lang/IllegalAccessException;
    :cond_13d
    :goto_13d
    const/4 v7, 0x2

    if-ge p4, v7, :cond_146

    .line 125
    add-int/lit8 v7, p4, 0x1

    invoke-static {v6, v7}, Lcom/apkfuns/logutils/utils/ObjectUtil;->objectToString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    .line 128
    :cond_146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%s = %s, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .restart local v4    # "formatString":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v9, 0x1

    if-nez v6, :cond_191

    const-string v7, "null"

    .line 131
    :goto_168
    aput-object v7, v8, v9

    .line 130
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_61

    .line 121
    .end local v4    # "formatString":Ljava/lang/String;
    .restart local v6    # "subObject":Ljava/lang/IllegalAccessException;
    :cond_173
    instance-of v7, v6, Ljava/lang/Character;

    if-eqz v7, :cond_13d

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "subObject":Ljava/lang/String;
    goto :goto_13d

    .line 131
    .end local v6    # "subObject":Ljava/lang/String;
    .restart local v4    # "formatString":Ljava/lang/String;
    :cond_191
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_168

    .line 113
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "formatString":Ljava/lang/String;
    .local v6, "subObject":Ljava/lang/Object;
    :catchall_196
    move-exception v8

    if-eqz v6, :cond_1dd

    .line 116
    invoke-static {p0}, Lcom/apkfuns/logutils/utils/ObjectUtil;->isStaticInnerClass(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1b7

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "$change"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "this$0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_61

    .line 119
    :cond_1b7
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_209

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    .end local v6    # "subObject":Ljava/lang/Object;
    :cond_1d4
    :goto_1d4
    const/4 v7, 0x2

    if-ge p4, v7, :cond_1dd

    .line 125
    add-int/lit8 v7, p4, 0x1

    invoke-static {v6, v7}, Lcom/apkfuns/logutils/utils/ObjectUtil;->objectToString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    .line 128
    :cond_1dd
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%s = %s, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .restart local v4    # "formatString":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v10, 0x1

    if-nez v6, :cond_227

    const-string v7, "null"

    .line 131
    :goto_1ff
    aput-object v7, v9, v10

    .line 130
    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    throw v8

    .line 121
    .end local v4    # "formatString":Ljava/lang/String;
    .restart local v6    # "subObject":Ljava/lang/Object;
    :cond_209
    instance-of v7, v6, Ljava/lang/Character;

    if-eqz v7, :cond_1d4

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "subObject":Ljava/lang/String;
    goto :goto_1d4

    .line 131
    .end local v6    # "subObject":Ljava/lang/String;
    .restart local v4    # "formatString":Ljava/lang/String;
    :cond_227
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1ff

    .line 134
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "formatString":Ljava/lang/String;
    :cond_22c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23f

    .line 135
    const-string v7, "}"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 137
    :cond_23f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8
.end method

.method public static isStaticInnerClass(Ljava/lang/Class;)Z
    .registers 4
    .param p0, "cla"    # Ljava/lang/Class;

    .prologue
    .line 35
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 36
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 37
    .local v0, "modifiers":I
    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_14

    .line 38
    const/4 v1, 0x1

    .line 41
    .end local v0    # "modifiers":I
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/apkfuns/logutils/utils/ObjectUtil;->objectToString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static objectToString(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "childLevel"    # I

    .prologue
    .line 45
    if-nez p0, :cond_5

    .line 46
    const-string v3, "Object[object is null]"

    .line 76
    :goto_4
    return-object v3

    .line 48
    :cond_5
    const/4 v3, 0x2

    if-le p1, v3, :cond_d

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 51
    :cond_d
    invoke-static {}, Lcom/apkfuns/logutils/Constant;->getParsers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-static {}, Lcom/apkfuns/logutils/Constant;->getParsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_44

    .line 52
    invoke-static {}, Lcom/apkfuns/logutils/Constant;->getParsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apkfuns/logutils/Parser;

    .line 53
    .local v1, "parser":Lcom/apkfuns/logutils/Parser;
    invoke-interface {v1}, Lcom/apkfuns/logutils/Parser;->parseClassType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 54
    invoke-interface {v1, p0}, Lcom/apkfuns/logutils/Parser;->parseString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 58
    .end local v1    # "parser":Lcom/apkfuns/logutils/Parser;
    :cond_44
    invoke-static {p0}, Lcom/apkfuns/logutils/utils/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 59
    invoke-static {p0}, Lcom/apkfuns/logutils/utils/ArrayUtil;->parseArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 61
    :cond_4f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, p0, v4, p1}, Lcom/apkfuns/logutils/utils/ObjectUtil;->getClassFields(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 65
    .local v2, "superClass":Ljava/lang/Class;
    if-eqz v2, :cond_9c

    .line 66
    :goto_8b
    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    .line 67
    const/4 v3, 0x1

    invoke-static {v2, v0, p0, v3, p1}, Lcom/apkfuns/logutils/utils/ObjectUtil;->getClassFields(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V

    .line 68
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_8b

    .line 71
    :cond_9c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 76
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "superClass":Ljava/lang/Class;
    :cond_a9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4
.end method
