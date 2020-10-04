.class public final Lcom/android/server/infra/SecureSettingsServiceNameResolver;
.super Ljava/lang/Object;
.source "SecureSettingsServiceNameResolver.java"

# interfaces
.implements Lcom/android/server/infra/ServiceNameResolver;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "property"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public dumpShort(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 51
    const-string v0, "SecureSettingsServiceNamer: prop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public dumpShort(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "userId"    # I

    .line 57
    const-string v0, "defaultService="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public getDefaultServiceName(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 45
    iget-object v0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureSettingsServiceNameResolver["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
