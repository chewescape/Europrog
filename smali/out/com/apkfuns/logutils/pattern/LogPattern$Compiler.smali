.class public Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;
.super Ljava/lang/Object;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkfuns/logutils/pattern/LogPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compiler"
.end annotation


# static fields
.field public static final CALLER_PATTERN:Ljava/util/regex/Pattern;

.field public static final CALLER_PATTERN_SHORT:Ljava/util/regex/Pattern;

.field public static final CONCATENATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final DATE_PATTERN_SHORT:Ljava/util/regex/Pattern;

.field public static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;

.field public static final PERCENT_PATTERN:Ljava/util/regex/Pattern;

.field public static final THREAD_NAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final THREAD_NAME_PATTERN_SHORT:Ljava/util/regex/Pattern;


# instance fields
.field private patternString:Ljava/lang/String;

.field private position:I

.field private queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 171
    const-string v0, "%%"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->PERCENT_PATTERN:Ljava/util/regex/Pattern;

    .line 172
    const-string v0, "%n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    .line 173
    const-string v0, "%([+-]?\\d+)?(\\.([+-]?\\d+))?caller(\\{([+-]?\\d+)?(\\.([+-]?\\d+))?\\})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CALLER_PATTERN:Ljava/util/regex/Pattern;

    .line 174
    const-string v0, "%date(\\{(.*?)\\})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->DATE_PATTERN:Ljava/util/regex/Pattern;

    .line 175
    const-string v0, "%([+-]?\\d+)?(\\.([+-]?\\d+))?\\("

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CONCATENATE_PATTERN:Ljava/util/regex/Pattern;

    .line 176
    const-string v0, "%d(\\{(.*?)\\})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->DATE_PATTERN_SHORT:Ljava/util/regex/Pattern;

    .line 177
    const-string v0, "%([+-]?\\d+)?(\\.([+-]?\\d+))?c(\\{([+-]?\\d+)?(\\.([+-]?\\d+))?\\})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CALLER_PATTERN_SHORT:Ljava/util/regex/Pattern;

    .line 178
    const-string v0, "%([+-]?\\d+)?(\\.([+-]?\\d+))?thread"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->THREAD_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 179
    const-string v0, "%([+-]?\\d+)?(\\.([+-]?\\d+))?t"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->THREAD_NAME_PATTERN_SHORT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .registers 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->patternString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 257
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iget v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    if-ne v1, v2, :cond_17

    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :goto_16
    return-object v0

    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private parse()V
    .registers 13

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 211
    sget-object v6, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->PERCENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v6}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v5

    .local v5, "matcher":Ljava/util/regex/Matcher;
    if-eqz v5, :cond_2e

    .line 212
    iget-object v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    iget-object v7, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v7, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    const-string v8, "%"

    invoke-direct {v7, v9, v9, v8}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 213
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    iput v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    .line 249
    :goto_2d
    return-void

    .line 216
    :cond_2e
    sget-object v6, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v6}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v5

    if-eqz v5, :cond_57

    .line 217
    iget-object v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    iget-object v7, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v7, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    const-string v8, "\n"

    invoke-direct {v7, v9, v9, v8}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 218
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    iput v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    goto :goto_2d

    .line 222
    :cond_57
    sget-object v6, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CALLER_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v6}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v5

    if-nez v5, :cond_67

    sget-object v6, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CALLER_PATTERN_SHORT:Ljava/util/regex/Pattern;

    invoke-direct {p0, v6}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v5

    if-eqz v5, :cond_cb

    .line 223
    :cond_67
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b7

    const-string v6, "0"

    :goto_6f
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 224
    .local v0, "count":I
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_bc

    const-string v6, "0"

    :goto_7b
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 225
    .local v3, "length":I
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c1

    const-string v6, "0"

    :goto_87
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 226
    .local v1, "countCaller":I
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c6

    const-string v6, "0"

    :goto_93
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 227
    .local v4, "lengthCaller":I
    iget-object v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    iget-object v7, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v7, Lcom/apkfuns/logutils/pattern/LogPattern$CallerLogPattern;

    invoke-direct {v7, v0, v3, v1, v4}, Lcom/apkfuns/logutils/pattern/LogPattern$CallerLogPattern;-><init>(IIII)V

    invoke-virtual {v6, v7}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 228
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    iput v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    goto/16 :goto_2d

    .line 223
    .end local v0    # "count":I
    .end local v1    # "countCaller":I
    .end local v3    # "length":I
    .end local v4    # "lengthCaller":I
    :cond_b7
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6f

    .line 224
    .restart local v0    # "count":I
    :cond_bc
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7b

    .line 225
    .restart local v3    # "length":I
    :cond_c1
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_87

    .line 226
    .restart local v1    # "countCaller":I
    :cond_c6
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_93

    .line 231
    .end local v0    # "count":I
    .end local v1    # "countCaller":I
    .end local v3    # "length":I
    :cond_cb
    sget-object v6, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v6}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v5

    if-nez v5, :cond_db

    sget-object v6, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->DATE_PATTERN_SHORT:Ljava/util/regex/Pattern;

    invoke-direct {p0, v6}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v5

    if-eqz v5, :cond_100

    .line 232
    :cond_db
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "dateFormat":Ljava/lang/String;
    iget-object v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    iget-object v7, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v7, Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;

    invoke-direct {v7, v9, v9, v2}, Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 234
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    iput v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    goto/16 :goto_2d

    .line 237
    .end local v2    # "dateFormat":Ljava/lang/String;
    :cond_100
    sget-object v6, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->THREAD_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v6}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v5

    if-nez v5, :cond_110

    sget-object v6, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->THREAD_NAME_PATTERN_SHORT:Ljava/util/regex/Pattern;

    invoke-direct {p0, v6}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v5

    if-eqz v5, :cond_152

    .line 238
    :cond_110
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_148

    const-string v6, "0"

    :goto_118
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 239
    .restart local v0    # "count":I
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_14d

    const-string v6, "0"

    :goto_124
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 240
    .restart local v3    # "length":I
    iget-object v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    iget-object v7, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v7, Lcom/apkfuns/logutils/pattern/LogPattern$ThreadNameLogPattern;

    invoke-direct {v7, v0, v3}, Lcom/apkfuns/logutils/pattern/LogPattern$ThreadNameLogPattern;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 241
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    iput v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    goto/16 :goto_2d

    .line 238
    .end local v0    # "count":I
    .end local v3    # "length":I
    :cond_148
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_118

    .line 239
    .restart local v0    # "count":I
    :cond_14d
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_124

    .line 244
    .end local v0    # "count":I
    :cond_152
    sget-object v6, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CONCATENATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v6}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v5

    if-eqz v5, :cond_193

    .line 245
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_189

    const-string v6, "0"

    :goto_162
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 246
    .restart local v0    # "count":I
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_18e

    const-string v6, "0"

    :goto_16e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 247
    .restart local v3    # "length":I
    iget-object v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    new-instance v7, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v7, v0, v3, v8}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;-><init>(IILjava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    iput v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    goto/16 :goto_2d

    .line 245
    .end local v0    # "count":I
    .end local v3    # "length":I
    :cond_189
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_162

    .line 246
    .restart local v0    # "count":I
    :cond_18e
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_16e

    .line 252
    .end local v0    # "count":I
    :cond_193
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Lcom/apkfuns/logutils/pattern/LogPattern;
    .registers 8
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 182
    if-nez p1, :cond_5

    .line 183
    const/4 v2, 0x0

    .line 206
    :goto_4
    return-object v2

    .line 185
    :cond_5
    iput v5, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    .line 186
    iput-object p1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->patternString:Ljava/lang/String;

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    .line 188
    iget-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    new-instance v3, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v5, v5, v4}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;-><init>(IILjava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_1f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    if-le v2, v3, :cond_a8

    .line 190
    const-string v2, "%"

    iget v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 191
    .local v1, "index":I
    const-string v2, ")"

    iget v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, "bracketIndex":I
    iget-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_87

    if-ge v0, v1, :cond_87

    .line 193
    iget-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    iget-object v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v3, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    iget v4, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v5, v4}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 194
    iget-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    iget-object v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    iget-object v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    iget-object v4, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apkfuns/logutils/pattern/LogPattern;

    invoke-virtual {v2, v3}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 195
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    .line 197
    :cond_87
    const/4 v2, -0x1

    if-ne v1, v2, :cond_b2

    .line 198
    iget-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    iget-object v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v3, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    iget v4, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v5, v4}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 206
    .end local v0    # "bracketIndex":I
    .end local v1    # "index":I
    :cond_a8
    iget-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apkfuns/logutils/pattern/LogPattern;

    goto/16 :goto_4

    .line 201
    .restart local v0    # "bracketIndex":I
    .restart local v1    # "index":I
    :cond_b2
    iget-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    iget-object v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v3, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    iget v4, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v5, v4}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 202
    iput v1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    .line 203
    invoke-direct {p0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->parse()V

    goto/16 :goto_1f
.end method
