.class public final synthetic Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$UGTAS6UjpowRtjdCWHwQ_4g5zsw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$UGTAS6UjpowRtjdCWHwQ_4g5zsw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$UGTAS6UjpowRtjdCWHwQ_4g5zsw;

    invoke-direct {v0}, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$UGTAS6UjpowRtjdCWHwQ_4g5zsw;-><init>()V

    sput-object v0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$UGTAS6UjpowRtjdCWHwQ_4g5zsw;->INSTANCE:Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$UGTAS6UjpowRtjdCWHwQ_4g5zsw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/people/SessionInfo;

    invoke-static {p1}, Lcom/android/server/people/PeopleService$LocalService;->lambda$requestPredictionUpdate$6(Lcom/android/server/people/SessionInfo;)V

    return-void
.end method
