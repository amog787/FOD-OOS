.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$readCallback;


# instance fields
.field private final synthetic f$0:[Lcom/android/internal/widget/VerifyCredentialResponse;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;->f$0:[Lcom/android/internal/widget/VerifyCredentialResponse;

    iput p2, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;->f$0:[Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->lambda$weaverVerify$1([Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V

    return-void
.end method
