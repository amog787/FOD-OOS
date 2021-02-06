.class public Landroid/net/util/SharedLog;
.super Ljava/lang/Object;
.source "SharedLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/SharedLog$Category;
    }
.end annotation


# static fields
.field private static final COMPONENT_DELIMITER:Ljava/lang/String; = "."

.field private static final DEFAULT_MAX_RECORDS:I = 0x1f4


# instance fields
.field private final mComponent:Ljava/lang/String;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "maxRecords"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, p1}, Landroid/util/LocalLog;-><init>(I)V

    invoke-direct {p0, v0, p2, p2}, Landroid/net/util/SharedLog;-><init>(Landroid/util/LocalLog;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/util/LocalLog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "localLog"    # Landroid/util/LocalLog;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "component"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/util/LocalLog;

    .line 68
    iput-object p2, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 59
    const/16 v0, 0x1f4

    invoke-direct {p0, v0, p1}, Landroid/net/util/SharedLog;-><init>(ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method private isRootLogInstance()Z
    .locals 2

    .line 199
    iget-object v0, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private logLine(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "category"    # Landroid/net/util/SharedLog$Category;
    .param p2, "msg"    # Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 190
    .local v0, "sj":Ljava/util/StringJoiner;
    invoke-direct {p0}, Landroid/net/util/SharedLog;->isRootLogInstance()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 191
    :cond_0
    sget-object v1, Landroid/net/util/SharedLog$Category;->NONE:Landroid/net/util/SharedLog$Category;

    if-eq p1, v1, :cond_1

    invoke-virtual {p1}, Landroid/net/util/SharedLog$Category;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 192
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "category"    # Landroid/net/util/SharedLog$Category;
    .param p2, "msg"    # Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1, p2}, Landroid/net/util/SharedLog;->logLine(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "entry":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 185
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 92
    iget-object v0, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 106
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->ERROR:Landroid/net/util/SharedLog$Category;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->ERROR:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v1, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 125
    if-nez p2, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 127
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->ERROR:Landroid/net/util/SharedLog$Category;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    return-void
.end method

.method public forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;
    .locals 3
    .param p1, "component"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Landroid/net/util/SharedLog;->isRootLogInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    :cond_0
    new-instance v0, Landroid/net/util/SharedLog;

    iget-object v1, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/util/LocalLog;

    iget-object v2, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Landroid/net/util/SharedLog;-><init>(Landroid/util/LocalLog;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->NONE:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v1, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 160
    sget-object v0, Landroid/net/util/SharedLog$Category;->NONE:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v0, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    return-void
.end method

.method public varargs logf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 170
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public mark(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 179
    sget-object v0, Landroid/net/util/SharedLog$Category;->MARK:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v0, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->WARN:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v1, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method
