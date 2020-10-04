.class public final synthetic Lcom/android/server/hdmi/-$$Lambda$ArcInitiationActionFromAvr$ysMwShprSV2Ejk2WTyEkZxajr8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/hdmi/ArcInitiationActionFromAvr;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/ArcInitiationActionFromAvr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/-$$Lambda$ArcInitiationActionFromAvr$ysMwShprSV2Ejk2WTyEkZxajr8c;->f$0:Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/-$$Lambda$ArcInitiationActionFromAvr$ysMwShprSV2Ejk2WTyEkZxajr8c;->f$0:Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->lambda$sendRequestActiveSource$1$ArcInitiationActionFromAvr(I)V

    return-void
.end method
