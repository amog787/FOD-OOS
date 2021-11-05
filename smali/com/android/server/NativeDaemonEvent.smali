.class public Lcom/android/server/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "NativeDaemonEvent.java"


# static fields
.field public static final SENSITIVE_MARKER:Ljava/lang/String; = "{{sensitive}}"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private mFdList:[Ljava/io/FileDescriptor;

.field private final mLogMessage:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private final mRawEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "cmdNumber"    # I
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "rawEvent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;
    .param p6, "fdList"    # [Ljava/io/FileDescriptor;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    .line 44
    iput p2, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    .line 45
    iput-object p3, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/android/server/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/android/server/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    .line 50
    return-void
.end method

.method public static filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    .locals 5
    .param p0, "events"    # [Lcom/android/server/NativeDaemonEvent;
    .param p1, "matchCode"    # I

    .line 182
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 183
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 184
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 185
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static isClassUnsolicited(I)Z
    .locals 1
    .param p0, "code"    # I

    .line 117
    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;
    .locals 13
    .param p0, "rawEvent"    # Ljava/lang/String;
    .param p1, "fdList"    # [Ljava/io/FileDescriptor;

    .line 138
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "parsed":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 143
    const/4 v2, 0x0

    .line 147
    .local v2, "skiplength":I
    const/4 v4, 0x0

    :try_start_0
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 148
    .local v8, "code":I
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 151
    .end local v2    # "skiplength":I
    .local v5, "skiplength":I
    nop

    .line 153
    const/4 v2, -0x1

    .line 154
    .local v2, "cmdNumber":I
    invoke-static {v8}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 155
    array-length v7, v1

    const/4 v9, 0x3

    if-lt v7, v9, :cond_0

    .line 159
    :try_start_1
    aget-object v7, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    .line 160
    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v7, v6

    add-int/2addr v5, v7

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "problem parsing cmdNumber"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 156
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Insufficient arguemnts"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    :goto_0
    move-object v7, p0

    .line 167
    .local v7, "logMessage":Ljava/lang/String;
    array-length v9, v1

    if-le v9, v3, :cond_2

    aget-object v9, v1, v3

    const-string/jumbo v10, "{{sensitive}}"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 168
    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v6

    add-int/2addr v5, v3

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    .line 172
    :cond_2
    move-object v0, v7

    .end local v7    # "logMessage":Ljava/lang/String;
    .local v0, "logMessage":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Lcom/android/server/NativeDaemonEvent;

    move-object v6, v4

    move v7, v2

    move-object v9, v3

    move-object v10, p0

    move-object v11, v0

    move-object v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/server/NativeDaemonEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V

    return-object v4

    .line 149
    .end local v0    # "logMessage":Ljava/lang/String;
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "skiplength":I
    .end local v8    # "code":I
    .local v2, "skiplength":I
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "problem parsing code"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 140
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "skiplength":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Insufficient arguments"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p0, "rawEvent"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "DEBUG_ROUTINE":Z
    const-string/jumbo v1, "unescapeArgs"

    .line 209
    .local v1, "LOGTAG":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v2, "parsed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 211
    .local v3, "length":I
    const/4 v4, 0x0

    .line 212
    .local v4, "current":I
    const/4 v5, -0x1

    .line 213
    .local v5, "wordEnd":I
    const/4 v6, 0x0

    .line 216
    .local v6, "quoted":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    if-ne v7, v8, :cond_0

    .line 217
    const/4 v6, 0x1

    .line 218
    add-int/lit8 v4, v4, 0x1

    .line 220
    :cond_0
    :goto_0
    if-ge v4, v3, :cond_8

    .line 222
    const/16 v7, 0x20

    if-eqz v6, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    .line 223
    .local v9, "terminator":C
    :goto_1
    move v5, v4

    .line 224
    :goto_2
    if-ge v5, v3, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_3

    .line 225
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_2

    .line 227
    add-int/lit8 v5, v5, 0x1

    .line 229
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 231
    :cond_3
    if-le v5, v3, :cond_4

    move v5, v3

    .line 232
    :cond_4
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 233
    .local v10, "word":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v4, v11

    .line 234
    if-nez v6, :cond_5

    .line 235
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 237
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 240
    :goto_3
    const-string v11, "\\\\"

    const-string v12, "\\"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 241
    const-string v11, "\\\""

    const-string v12, "\""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 244
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 248
    .local v7, "nextSpace":I
    const-string v11, " \""

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 252
    .local v11, "nextQuote":I
    const/4 v12, -0x1

    if-le v11, v12, :cond_6

    if-gt v11, v7, :cond_6

    .line 253
    const/4 v6, 0x1

    .line 254
    add-int/lit8 v4, v11, 0x2

    goto :goto_4

    .line 256
    :cond_6
    const/4 v6, 0x0

    .line 257
    if-le v7, v12, :cond_7

    .line 258
    add-int/lit8 v4, v7, 0x1

    .line 265
    .end local v7    # "nextSpace":I
    .end local v9    # "terminator":C
    .end local v10    # "word":Ljava/lang/String;
    .end local v11    # "nextQuote":I
    :cond_7
    :goto_4
    goto :goto_0

    .line 266
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method


# virtual methods
.method public checkCode(I)V
    .locals 3
    .param p1, "code"    # I

    .line 126
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    if-ne v0, p1, :cond_0

    .line 129
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCmdNumber()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .line 198
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    .line 201
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 202
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    array-length v1, v0

    if-le p1, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_1
    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method

.method public isClassClientError()Z
    .locals 2

    .line 106
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClassContinue()Z
    .locals 2

    .line 85
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClassOk()Z
    .locals 2

    .line 92
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClassServerError()Z
    .locals 2

    .line 99
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClassUnsolicited()Z
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    return-object v0
.end method
