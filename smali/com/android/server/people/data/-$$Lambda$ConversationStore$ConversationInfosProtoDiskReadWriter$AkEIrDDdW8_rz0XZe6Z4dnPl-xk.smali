.class public final synthetic Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$AkEIrDDdW8_rz0XZe6Z4dnPl-xk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$AkEIrDDdW8_rz0XZe6Z4dnPl-xk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$AkEIrDDdW8_rz0XZe6Z4dnPl-xk;

    invoke-direct {v0}, Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$AkEIrDDdW8_rz0XZe6Z4dnPl-xk;-><init>()V

    sput-object v0, Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$AkEIrDDdW8_rz0XZe6Z4dnPl-xk;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$AkEIrDDdW8_rz0XZe6Z4dnPl-xk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->lambda$protoStreamReader$1(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
