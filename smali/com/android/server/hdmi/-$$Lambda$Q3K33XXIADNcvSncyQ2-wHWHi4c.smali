.class public final synthetic Lcom/android/server/hdmi/-$$Lambda$Q3K33XXIADNcvSncyQ2-wHWHi4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/hdmi/-$$Lambda$Q3K33XXIADNcvSncyQ2-wHWHi4c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/hdmi/-$$Lambda$Q3K33XXIADNcvSncyQ2-wHWHi4c;

    invoke-direct {v0}, Lcom/android/server/hdmi/-$$Lambda$Q3K33XXIADNcvSncyQ2-wHWHi4c;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/-$$Lambda$Q3K33XXIADNcvSncyQ2-wHWHi4c;->INSTANCE:Lcom/android/server/hdmi/-$$Lambda$Q3K33XXIADNcvSncyQ2-wHWHi4c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
