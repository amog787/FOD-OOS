.class public interface abstract Lcom/android/server/infra/ServiceNameResolver;
.super Ljava/lang/Object;
.source "ServiceNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;
    }
.end annotation


# virtual methods
.method public abstract dumpShort(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpShort(Ljava/io/PrintWriter;I)V
.end method

.method public abstract getDefaultServiceName(I)Ljava/lang/String;
.end method

.method public getServiceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 75
    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDefaultServiceEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "checking default service not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isTemporary(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public resetTemporaryService(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "temporary user not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultServiceEnabled(IZ)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "changing default service not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 56
    return-void
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "durationMs"    # I

    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "temporary user not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
