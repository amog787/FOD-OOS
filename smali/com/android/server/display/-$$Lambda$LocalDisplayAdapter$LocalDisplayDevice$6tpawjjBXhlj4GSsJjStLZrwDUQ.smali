.class public final synthetic Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$6tpawjjBXhlj4GSsJjStLZrwDUQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$6tpawjjBXhlj4GSsJjStLZrwDUQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$6tpawjjBXhlj4GSsJjStLZrwDUQ;

    invoke-direct {v0}, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$6tpawjjBXhlj4GSsJjStLZrwDUQ;-><init>()V

    sput-object v0, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$6tpawjjBXhlj4GSsJjStLZrwDUQ;->INSTANCE:Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$6tpawjjBXhlj4GSsJjStLZrwDUQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    check-cast p2, Landroid/os/IBinder;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->lambda$6tpawjjBXhlj4GSsJjStLZrwDUQ(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/os/IBinder;I)V

    return-void
.end method
