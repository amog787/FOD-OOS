.class public Lcom/android/server/biometrics/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricUtils;


# static fields
.field private static sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final DOUBLE_ACCOUNT_UID:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/fingerprint/FingerprintUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    .line 41
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->DOUBLE_ACCOUNT_UID:I

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;
    .locals 2

    .line 44
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    invoke-direct {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    .line 48
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    return-object v0

    .line 48
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    .line 107
    .local v0, "state":Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    if-nez v0, :cond_0

    .line 108
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 109
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    :cond_0
    monitor-exit p0

    return-object v0

    .line 112
    .end local v0    # "state":Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 65
    if-nez p2, :cond_0

    .line 66
    const-string v0, "FingerprintUtils"

    const-string v1, "addBiometricForUser for 999"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v0, 0x3e7

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 70
    :cond_0
    return-void
.end method

.method public getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->getBiometrics()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeBiometricForUser(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "fingerId"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->removeBiometric(I)V

    .line 76
    if-nez p2, :cond_0

    .line 77
    const-string v0, "FingerprintUtils"

    const-string/jumbo v1, "removeBiometricForUser for 999"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/16 v0, 0x3e7

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->removeBiometric(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "fingerId"    # I
    .param p4, "name"    # Ljava/lang/CharSequence;

    .line 86
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->renameBiometric(ILjava/lang/CharSequence;)V

    .line 92
    if-nez p2, :cond_1

    .line 93
    const-string v0, "FingerprintUtils"

    const-string/jumbo v1, "renameBiometricForUser for 999"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/16 v0, 0x3e7

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->renameBiometric(ILjava/lang/CharSequence;)V

    .line 97
    :cond_1
    return-void
.end method
