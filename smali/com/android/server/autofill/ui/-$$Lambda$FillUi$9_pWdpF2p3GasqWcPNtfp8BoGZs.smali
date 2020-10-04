.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$FillUi$9_pWdpF2p3GasqWcPNtfp8BoGZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RemoteViews$OnClickHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/ui/-$$Lambda$FillUi$9_pWdpF2p3GasqWcPNtfp8BoGZs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$9_pWdpF2p3GasqWcPNtfp8BoGZs;

    invoke-direct {v0}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$9_pWdpF2p3GasqWcPNtfp8BoGZs;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$9_pWdpF2p3GasqWcPNtfp8BoGZs;->INSTANCE:Lcom/android/server/autofill/ui/-$$Lambda$FillUi$9_pWdpF2p3GasqWcPNtfp8BoGZs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/autofill/ui/FillUi;->lambda$newClickBlocker$4(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p1

    return p1
.end method
