.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$Dv81zZf4-dKkZJxVC6zm8CtQ2wE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$Dv81zZf4-dKkZJxVC6zm8CtQ2wE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$Dv81zZf4-dKkZJxVC6zm8CtQ2wE;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$Dv81zZf4-dKkZJxVC6zm8CtQ2wE;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$Dv81zZf4-dKkZJxVC6zm8CtQ2wE;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$Dv81zZf4-dKkZJxVC6zm8CtQ2wE;

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

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$programSelectorFromHal$2(I)[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p1

    return-object p1
.end method
