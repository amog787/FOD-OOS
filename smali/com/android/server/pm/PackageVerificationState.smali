.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private mExtendedTimeout:Z

.field private mHasOptionalVerifier:Z

.field private mOptionalVerificationComplete:Z

.field private mOptionalVerificationPassed:Z

.field private mOptionalVerifierUid:I

.field private final mParams:Lcom/android/server/pm/PackageManagerService$InstallParams;

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private final mRequiredVerifierUid:I

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method constructor <init>(ILcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 1
    .param p1, "requiredVerifierUid"    # I
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    .line 66
    iput-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mParams:Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 67
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 69
    return-void
.end method


# virtual methods
.method public addOptionalVerifier(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 85
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerifierUid:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    .line 87
    return-void
.end method

.method addSufficientVerifier(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 81
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 82
    return-void
.end method

.method extendTimeout()V
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 191
    :cond_0
    return-void
.end method

.method getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;
    .locals 1

    .line 72
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

.method setVerifierResponse(II)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "code"    # I

    .line 97
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 98
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 99
    if-eq p2, v2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 107
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 104
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 105
    nop

    .line 109
    :goto_0
    return v2

    .line 110
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerifierUid:I

    if-ne p1, v0, :cond_4

    .line 111
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationComplete:Z

    .line 112
    if-eq p2, v2, :cond_3

    .line 117
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    goto :goto_1

    .line 114
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    .line 115
    nop

    .line 119
    :goto_1
    return v2

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    if-ne p2, v2, :cond_5

    .line 123
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 128
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 129
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 132
    :cond_6
    return v2

    .line 136
    :cond_7
    return v1
.end method

.method timeoutExtended()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return v0
.end method
