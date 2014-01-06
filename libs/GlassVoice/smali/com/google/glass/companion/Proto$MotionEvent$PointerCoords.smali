.class public final Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;


# instance fields
.field private bitField0_:I

.field private orientation_:F

.field private pressure_:F

.field private size_:F

.field private toolMajor_:F

.field private toolMinor_:F

.field private touchMajor_:F

.field private touchMinor_:F

.field private x_:F

.field private y_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1140
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1141
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1146
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1165
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1184
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1203
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1222
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1241
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1260
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1279
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1298
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1141
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1317
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1318
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1319
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1320
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1321
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1322
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1323
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1324
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1325
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1326
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1327
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->cachedSize:I

    .line 1328
    return-object p0
.end method

.method public clearOrientation()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1160
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1161
    return-object p0
.end method

.method public clearPressure()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1178
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1179
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1180
    return-object p0
.end method

.method public clearSize()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1197
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1198
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1199
    return-object p0
.end method

.method public clearToolMajor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1216
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1217
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1218
    return-object p0
.end method

.method public clearToolMinor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1235
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1236
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1237
    return-object p0
.end method

.method public clearTouchMajor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1254
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1255
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1256
    return-object p0
.end method

.method public clearTouchMinor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1273
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1274
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1275
    return-object p0
.end method

.method public clearX()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1292
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1293
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1294
    return-object p0
.end method

.method public clearY()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1311
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1312
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1313
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1333
    if-ne p1, p0, :cond_1

    .line 1336
    :cond_0
    :goto_0
    return v1

    .line 1334
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1335
    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 1336
    .local v0, other:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getOrientation()F
    .locals 1

    .prologue
    .line 1148
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    return v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 1167
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1394
    const/4 v0, 0x0

    .line 1395
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1396
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1399
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1400
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1403
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1404
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1407
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1408
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1411
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1412
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1415
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1416
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1419
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1420
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1423
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 1424
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1427
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 1428
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1431
    :cond_8
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->cachedSize:I

    .line 1432
    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 1186
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    return v0
.end method

.method public getToolMajor()F
    .locals 1

    .prologue
    .line 1205
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    return v0
.end method

.method public getToolMinor()F
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    return v0
.end method

.method public getTouchMajor()F
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    return v0
.end method

.method public getTouchMinor()F
    .locals 1

    .prologue
    .line 1262
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1281
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1300
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    return v0
.end method

.method public hasOrientation()Z
    .locals 1

    .prologue
    .line 1156
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPressure()Z
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSize()Z
    .locals 1

    .prologue
    .line 1194
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToolMajor()Z
    .locals 1

    .prologue
    .line 1213
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToolMinor()Z
    .locals 1

    .prologue
    .line 1232
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTouchMajor()Z
    .locals 1

    .prologue
    .line 1251
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTouchMinor()Z
    .locals 1

    .prologue
    .line 1270
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasX()Z
    .locals 1

    .prologue
    .line 1289
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasY()Z
    .locals 1

    .prologue
    .line 1308
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1348
    const/16 v0, 0x11

    .line 1349
    .local v0, result:I
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1350
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1351
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1352
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1353
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1354
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1355
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1356
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1357
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1358
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1440
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1441
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1445
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1446
    :sswitch_0
    return-object p0

    .line 1451
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1452
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1456
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1457
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1461
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1462
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1466
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1467
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1471
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1472
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1476
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1477
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1481
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1482
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1486
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1487
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1491
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1492
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto/16 :goto_0

    .line 1441
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1507
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1501
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public setOrientation(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "value"

    .prologue
    .line 1151
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1152
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1153
    return-object p0
.end method

.method public setPressure(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "value"

    .prologue
    .line 1170
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1171
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1172
    return-object p0
.end method

.method public setSize(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "value"

    .prologue
    .line 1189
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1190
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1191
    return-object p0
.end method

.method public setToolMajor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "value"

    .prologue
    .line 1208
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1209
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1210
    return-object p0
.end method

.method public setToolMinor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "value"

    .prologue
    .line 1227
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1228
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1229
    return-object p0
.end method

.method public setTouchMajor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "value"

    .prologue
    .line 1246
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1247
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1248
    return-object p0
.end method

.method public setTouchMinor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "value"

    .prologue
    .line 1265
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1266
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1267
    return-object p0
.end method

.method public setX(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "value"

    .prologue
    .line 1284
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1285
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1286
    return-object p0
.end method

.method public setY(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "value"

    .prologue
    .line 1303
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1304
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1305
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1363
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1364
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1366
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1367
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1369
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1370
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1372
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1373
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1375
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1376
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1378
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1379
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1381
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 1382
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1384
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 1385
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1387
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 1388
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1390
    :cond_8
    return-void
.end method
