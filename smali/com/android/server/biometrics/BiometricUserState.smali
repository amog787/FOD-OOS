.class public abstract Lcom/android/server/biometrics/BiometricUserState;
.super Ljava/lang/Object;
.source "BiometricUserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserState"


# instance fields
.field protected final mBiometrics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mFile:Ljava/io/File;

.field private final mWriteStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 91
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/android/server/biometrics/BiometricUserState$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricUserState$1;-><init>(Lcom/android/server/biometrics/BiometricUserState;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    .line 92
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricUserState;->getFileForUser(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    .line 93
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricUserState;->mContext:Landroid/content/Context;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->readStateSyncLocked()V

    .line 96
    monitor-exit p0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFileForUser(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 163
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricUserState;->getBiometricFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isUnique(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 154
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 155
    .local v1, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;, "TT;"
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/4 v0, 0x0

    return v0

    .line 158
    .end local v1    # "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;, "TT;"
    :cond_0
    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 200
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 201
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 202
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 203
    goto :goto_0

    .line 206
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "tagName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricUserState;->getBiometricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricUserState;->parseBiometricsLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 210
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 211
    :cond_4
    return-void
.end method

.method private readStateSyncLocked()V
    .locals 5

    .line 173
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    return-void

    .line 177
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    .local v0, "in":Ljava/io/FileInputStream;
    nop

    .line 183
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 184
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/BiometricUserState;->parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 192
    nop

    .line 193
    return-void

    .line 191
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing settings file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 192
    throw v1

    .line 178
    .end local v0    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v1, "UserState"

    const-string v2, "No fingerprint state"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method private scheduleWriteStateLocked()V
    .locals 1

    .line 167
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method


# virtual methods
.method public addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    .local p1, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;, "TT;"
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->scheduleWriteStateLocked()V

    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract doWriteState()V
.end method

.method protected abstract getBiometricFile()Ljava/lang/String;
.end method

.method public getBiometrics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract getBiometricsTag()Ljava/lang/String;
.end method

.method protected abstract getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract getNameTemplateResource()I
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 6

    .line 142
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    const/4 v0, 0x1

    .line 145
    .local v0, "guess":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricUserState;->getNameTemplateResource()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/BiometricUserState;->isUnique(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    return-object v1

    .line 149
    :cond_0
    nop

    .end local v1    # "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 150
    goto :goto_0
.end method

.method protected abstract parseBiometricsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public removeBiometric(I)V
    .locals 2
    .param p1, "biometricId"    # I

    .line 107
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    monitor-enter p0

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->scheduleWriteStateLocked()V

    .line 112
    goto :goto_1

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    :cond_1
    :goto_1
    monitor-exit p0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renameBiometric(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "biometricId"    # I
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 119
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    monitor-enter p0

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 123
    .local v1, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    invoke-virtual {v1, p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->setName(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->scheduleWriteStateLocked()V

    .line 125
    goto :goto_1

    .line 120
    .end local v1    # "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "i":I
    :cond_1
    :goto_1
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
