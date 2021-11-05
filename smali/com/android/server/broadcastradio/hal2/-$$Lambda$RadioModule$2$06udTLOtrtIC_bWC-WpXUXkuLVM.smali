.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$2$06udTLOtrtIC_bWC-WpXUXkuLVM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$2$06udTLOtrtIC_bWC-WpXUXkuLVM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$2$06udTLOtrtIC_bWC-WpXUXkuLVM;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$2$06udTLOtrtIC_bWC-WpXUXkuLVM;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$2$06udTLOtrtIC_bWC-WpXUXkuLVM;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$2$06udTLOtrtIC_bWC-WpXUXkuLVM;

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

    check-cast p1, Landroid/hardware/broadcastradio/V2_0/Announcement;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$2;->lambda$onListUpdated$0(Landroid/hardware/broadcastradio/V2_0/Announcement;)Landroid/hardware/radio/Announcement;

    move-result-object p1

    return-object p1
.end method
