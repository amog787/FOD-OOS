.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$P20z6nVni7Z0919gQ-M-2S9sxbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$P20z6nVni7Z0919gQ-M-2S9sxbM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$P20z6nVni7Z0919gQ-M-2S9sxbM;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$P20z6nVni7Z0919gQ-M-2S9sxbM;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$P20z6nVni7Z0919gQ-M-2S9sxbM;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$P20z6nVni7Z0919gQ-M-2S9sxbM;

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

    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$programListChunkFromHal$5(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p1

    return-object p1
.end method
