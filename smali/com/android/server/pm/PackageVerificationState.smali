.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private mExtendedTimeout:Z

.field private mHasOptionalVerifier:Z

.field private mIntegrityVerificationComplete:Z

.field private mOptionalVerificationComplete:Z

.field private mOptionalVerificationPassed:Z

.field private mOptionalVerifierUid:I

.field private final mParams:Lcom/android/server/pm/PackageManagerService$InstallParams;

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private mRequiredVerifierUid:I

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 1
    .param p1, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mParams:Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 63
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 65
    return-void
.end method


# virtual methods
.method public addOptionalVerifier(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 86
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerifierUid:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    .line 88
    return-void
.end method

.method addSufficientVerifier(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 82
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 83
    return-void
.end method

.method areAllVerificationsComplete()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method extendTimeout()V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 189
    :cond_0
    return-void
.end method

.method getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mParams:Lcom/android/server/pm/PackageManagerService$InstallParams;

    return-object v0
.end method

.method isInstallAllowed()Z
    .locals 3

    .line 169
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez v0, :cond_0

    .line 170
    return v1

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    if-nez v0, :cond_1

    .line 174
    return v1

    .line 177
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v0, :cond_2

    .line 178
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    return v0

    .line 181
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method isIntegrityVerificationComplete()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    return v0
.end method

.method isVerificationComplete()Z
    .locals 3

    .line 147
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-nez v0, :cond_0

    .line 148
    return v1

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationComplete:Z

    if-nez v0, :cond_1

    .line 152
    return v1

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 156
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    return v0
.end method

.method setIntegrityVerificationResult(I)V
    .locals 1
    .param p1, "code"    # I

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    .line 202
    return-void
.end method

.method setRequiredVerifierUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 73
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    .line 74
    return-void
.end method

.method setVerifierResponse(II)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "code"    # I

    .line 98
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 99
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 100
    if-eq p2, v2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 108
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 105
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 106
    nop

    .line 110
    :goto_0
    return v2

    .line 111
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerifierUid:I

    if-ne p1, v0, :cond_4

    .line 112
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationComplete:Z

    .line 113
    if-eq p2, v2, :cond_3

    .line 118
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    goto :goto_1

    .line 115
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    .line 116
    nop

    .line 120
    :goto_1
    return v2

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    if-ne p2, v2, :cond_5

    .line 124
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 130
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 133
    :cond_6
    return v2

    .line 137
    :cond_7
    return v1
.end method

.method timeoutExtended()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return v0
.end method
