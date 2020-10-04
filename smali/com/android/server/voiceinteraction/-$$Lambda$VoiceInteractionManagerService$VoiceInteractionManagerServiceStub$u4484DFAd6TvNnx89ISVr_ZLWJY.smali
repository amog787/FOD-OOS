.class public final synthetic Lcom/android/server/voiceinteraction/-$$Lambda$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$u4484DFAd6TvNnx89ISVr_ZLWJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/-$$Lambda$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$u4484DFAd6TvNnx89ISVr_ZLWJY;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iput p2, p0, Lcom/android/server/voiceinteraction/-$$Lambda$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$u4484DFAd6TvNnx89ISVr_ZLWJY;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/voiceinteraction/-$$Lambda$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$u4484DFAd6TvNnx89ISVr_ZLWJY;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget v1, p0, Lcom/android/server/voiceinteraction/-$$Lambda$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$u4484DFAd6TvNnx89ISVr_ZLWJY;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->lambda$switchUser$0$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub(I)V

    return-void
.end method
