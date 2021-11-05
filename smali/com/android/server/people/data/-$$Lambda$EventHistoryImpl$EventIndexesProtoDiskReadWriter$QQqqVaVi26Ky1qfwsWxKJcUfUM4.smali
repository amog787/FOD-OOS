.class public final synthetic Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$QQqqVaVi26Ky1qfwsWxKJcUfUM4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$QQqqVaVi26Ky1qfwsWxKJcUfUM4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$QQqqVaVi26Ky1qfwsWxKJcUfUM4;

    invoke-direct {v0}, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$QQqqVaVi26Ky1qfwsWxKJcUfUM4;-><init>()V

    sput-object v0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$QQqqVaVi26Ky1qfwsWxKJcUfUM4;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$QQqqVaVi26Ky1qfwsWxKJcUfUM4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->lambda$protoStreamWriter$0(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseArray;)V

    return-void
.end method
