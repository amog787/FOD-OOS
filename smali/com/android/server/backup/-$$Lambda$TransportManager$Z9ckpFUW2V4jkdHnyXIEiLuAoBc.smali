.class public final synthetic Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/transport/OnTransportRegisteredListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;

    invoke-direct {v0}, Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;-><init>()V

    sput-object v0, Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/backup/TransportManager;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
