.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$HR1t3HnLMLNA3jZqzjEAao66N98;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$HR1t3HnLMLNA3jZqzjEAao66N98;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$HR1t3HnLMLNA3jZqzjEAao66N98;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$HR1t3HnLMLNA3jZqzjEAao66N98;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$HR1t3HnLMLNA3jZqzjEAao66N98;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$HR1t3HnLMLNA3jZqzjEAao66N98;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$programInfoFromHal$3(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p1

    return-object p1
.end method
