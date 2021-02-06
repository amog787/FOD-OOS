.class public final synthetic Lcom/android/server/hdmi/-$$Lambda$ArcTerminationActionFromAvr$Q5Tewk7_xZ9w3X8CStv_tIZuDQY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/ArcTerminationActionFromAvr;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/ArcTerminationActionFromAvr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/-$$Lambda$ArcTerminationActionFromAvr$Q5Tewk7_xZ9w3X8CStv_tIZuDQY;->f$0:Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/-$$Lambda$ArcTerminationActionFromAvr$Q5Tewk7_xZ9w3X8CStv_tIZuDQY;->f$0:Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->lambda$sendTerminateArc$0$ArcTerminationActionFromAvr(I)V

    return-void
.end method
